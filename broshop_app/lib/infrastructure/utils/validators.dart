class Validators {
  static String? noneEmptyValidator(String? value) {
    if (value!.isEmpty) {
      return 'This field is required';
    } else {
      return null;
    }
  }

  static isEmail(String pattern) {
    Pattern emailPattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    if (RegExp(emailPattern as String).hasMatch(pattern)) {
      return true;
    } else {
      return false;
    }
  }

  static String? userNameValidator(String? value) {
    // r'^((50|51|52|55|56){1}([0-9]{7}))$'
    Pattern mobileNumberPattern = r'^((50|51|52|55|56){1}([0-9]{7}))$';
    // r'^(?:[+0][1-9])?[0-9]{9}$';
    Pattern emailPattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    if (RegExp(emailPattern as String).hasMatch(value!)) {
      return null;
    } else if (RegExp(mobileNumberPattern as String).hasMatch(value)) {
      return null;
    } else {
      return "Please enter a valid username";
    }
  }

  static String? passwordValidator(String? value) {
    RegExp regex =
        RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{5,}$');
    if (value!.length < 4) {
      return 'Try one with minimum 5 characters';
    }
    if (value.isEmpty) {
      return 'Please enter password';
    } else {
      if (!regex.hasMatch(value)) {
        return 'The password you entered is not strong enough. Your password should contain Uppercase, Lowercase, Special character and numbers';
      } else {
        return null;
      }
    }
  }

  static String? confirmPasswordValidator(String value, password) {
    return password == value ? null : "The passwords you entered didn’t match";
  }

  static String? pincodeValidator(String? value) {
    String pattern = r'^[1-9][0-9]{5}$';
    RegExp regExp = RegExp(pattern);
    return regExp.hasMatch(value!) ? null : "Please enter a valid Pincode";
  }

  static String? mobileNumberValidator(value) {
    Pattern mobileNumberPattern = r'^((50|51|52|55|56){1}([0-9]{7}))$';
    if (RegExp(mobileNumberPattern as String).hasMatch(value)) {
      return null;
    } else {
      return "Enter a valid number";
    }
  }

  static String? businessNumberValidator(String? mobile) {
    Pattern mobileNumberPattern = r'^(?:[+0][1-9])?[0-9]{10}$';
    if (mobile!.isEmpty) {
      return null;
    } else {
      return mobile != 'NA'
          ? RegExp(mobileNumberPattern as String).hasMatch(mobile)
              ? null
              : "Please enter a valid mobile number"
          : null;
    }
  }

  static String? emailValidator(String? email) {
    Pattern emailPattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    return RegExp(emailPattern as String).hasMatch(email!)
        ? null
        : "Please use a valid email address";
  }

  static bool isValidEmail(String email) {
    Pattern emailPattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    return RegExp(emailPattern as String).hasMatch(email);
  }

  static bool isValidMobile(String mobile) {
    dynamic mobileNumberPattern = r'^(?:[+0][1-9])?[0-9]{10}$';
    return RegExp(mobileNumberPattern).hasMatch(mobile);
  }
}
