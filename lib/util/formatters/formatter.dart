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

  
}
