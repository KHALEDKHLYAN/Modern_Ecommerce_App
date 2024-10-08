class Validator {
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'EMail is';
    }

    //Regular expression for email validation
    final emailRegExp =
        RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');

    if (!emailRegExp.hasMatch(value)) {
      return 'Invalid Email';
    }

    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required';
    }

    //Check minimum password length
    if (value.length < 8) {
      return 'Password must be at least 8 characters long';
    }

    if(!value.contains(RegExp(r'[!@#$%^&*(),.?|<>]'))){
      return 'Password must contain at least one special character';
    }
    return null;
  }

  static String? validatePhoneNUmber(String ? value) {
    if (value == null || value.isEmpty) {
      return 'Phone number Required';
    }
    //Regular expression for phone number validation
    final phoneRegExp = RegExp(r'^\d{10}$');

    if(!phoneRegExp.hasMatch(value)){
      return 'Invalid Phone Number';
    }
    return null;
  }

}
