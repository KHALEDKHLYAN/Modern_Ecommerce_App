import 'package:intl/intl.dart';

class TFormatter {
  static String formatDate(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat('dd-MMM-yyy')
        .format(date); //Customize the date  format as per your requirement
  }

  static String formatCurrency(double amount) {
    return NumberFormat.currency(locale: 'en_US', decimalDigits: 2)
        .format(amount); //Customize the currecy locale and symbol as needed
  }

  static formatPhoneNumber(String phoneNumber) {
    //Asuming a 10-digit US Phone Number format:(123) 456-7890
    if (phoneNumber.length == 10) {
      return '(${phoneNumber.substring(0, 3)}) ${phoneNumber.substring(3, 6)}${phoneNumber.substring(6)}';
    } else if (phoneNumber.length == 11) {
      return '(${phoneNumber.substring(0, 4)}) ${phoneNumber.substring(4, 7)}${phoneNumber.substring}';
    }
    //Add more Custom phone  number formats as needed
    return phoneNumber;
  }

  static String internationalFormatPhoneNumber(String phoneNumber) {
    // Remove any non-digit characters from the phone number
    var digitsOnly = phoneNumber.replaceAll(RegExp(r'\D'), '');

    // Ensure the phone number has at least 2 digits for the country code
    if (digitsOnly.length < 2) {
      throw ArgumentError(
          'Phone number is too short to contain a valid country code');
    }

    // Extract the country code from the digits
    String countryCode = '+${digitsOnly.substring(0, 2)}';
    digitsOnly = digitsOnly.substring(2);

    // Add the remaining digits with proper formatting
    final formattedNumber = StringBuffer();
    formattedNumber.write('$countryCode '); // Add country code and space

    int i = 0;
    while (i < digitsOnly.length) {
      int groupLength = 2;

      // In case of a +1 country code (USA/Canada), use 3 digits for the first group
      if (i == 0 && countryCode == '+1') {
        groupLength = 3;
      }

      int end = i + groupLength;
      if (end > digitsOnly.length) {
        end = digitsOnly.length;
      }

      formattedNumber.write(digitsOnly.substring(i, end));

      // Add a space or separator between digit groups if there are more digits left
      if (end < digitsOnly.length) {
        formattedNumber.write(' '); // You can use '-' or '.' if you prefer
      }
      i = end;
    }

    return formattedNumber.toString();
  }
}
