class Validate {
  ///Password Validation
  static String? password(val) {
    if (val!.trim().isEmpty) {
      return "Please provide Password";
    } else if (val.length < 6) {
      return 'Password must be at least 6 digits';
    }
    return null;
  }

  ///Email Validation
  static String? email(val) {
    bool emailValid = RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(val);
    if (val.isEmpty) {
      return "Please provide Full name";
    } else if (!emailValid) {
      return 'Invalid Email (i.e): abcd123@domain.com';
    }
    if (val.isEmpty) {
      return "Please provide Email";
    }
    return null;
  }

  ///Name validation
  static String? name(String? val) {
    bool isValidName =
        RegExp(r"^[a-zA-Z][a-zA-Z\s]{0,20}[a-zA-Z]$").hasMatch(val!);
    if (val.isEmpty) {
      return 'PLease Add your Name';
    } else if (!isValidName) {
      return 'Invalid Name';
    }
    return null;
  }

  ///Phone Number Validation
  static String? phone(String? val) {
    bool isValidPhone = RegExp(r"^(?:[+0][0-9])?[0-9]{10,14}$").hasMatch(val!);
    if (val.isEmpty) {
      return 'Provide a Phone Number';
    } else if (!isValidPhone) {
      return 'Phone number Invalid';
    }
    return null;
  }

  ///Phone Number Validation
  static String? percentage(v) {
    if (v!.isEmpty) {
      return 'Please Enter a %age';
    } else if (double.parse(v) > 100) {
      return '%age cannot be exceeded 100';
    }

    return null;
  }

  ///Phone Number Validation
  static String? descriptions(v) {
    if (v!.isEmpty) {
      return 'Please Enter a Descriptions';
    }

    return null;
  }

  ///This may be title,subject,heading
  ///must be at least 50 Alphabets
  static String? subject(String? v) {
    if (v!.isEmpty) {
      return 'Please Enter a Descriptions';
    }
    if (v.length < 50) {
      return 'Please Enter at least 50 Alphabets';
    }

    return null;
  }
}
