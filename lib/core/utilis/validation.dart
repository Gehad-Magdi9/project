class MyValidation {
  String? nameValidate(String? input) {
    if ((input?.toLowerCase().startsWith("a") ?? false) && (input?.length ?? 0) > 4) {
      return null;
    }
    return "invalid name"; //incorrect
  }

  String? passwordValidate(String? password) {
    // Check if the password length is between 8 and 20 characters
    if ((password?.length ?? 0) < 8 || (password?.length ?? 0) > 20) {
      return "invalid password";
    }

    // Check if the password contains at least one letter and one digit
    bool hasLetter = false;
    bool hasDigit = false;
    bool hasSpecialCharacter = false;

    for (int i = 0; i < (password?.length ?? 0); i++) {
      if (password![i].contains(RegExp(r'[a-zA-Z]'))) {
        hasLetter = true;
      } else if (password[i].contains(RegExp(r'[0-9]'))) {
        hasDigit = true;
      } else if (password[i].contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
        hasSpecialCharacter = true;
      }
    }

    if (!hasLetter || !hasDigit || !hasSpecialCharacter) {
      return "invalid password";
    }

    // Password meets all criteria
    return "valid password";
  }
    
  String? emailvalidate(String? email) {
    // Regular expression for validating email addresses
    final RegExp emailRegex = RegExp(
      r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
      caseSensitive: false,
      multiLine: false,
    );

    // Check if the email matches the regular expression
    if (emailRegex.hasMatch(email!)) {
      return "valid email";
    }else {
      return "invalid email";
    }
  }

  String? phonevalidate(String? phoneNumber) {
    // Regular expression for validating Egyptian phone numbers
    final RegExp phonevalidate = RegExp(
      r'^(012|011|010|015)[0-9]{8}$',
      caseSensitive: false,
      multiLine: false,
    );

    // Check if the phone number matches the regular expression
    if (phonevalidate.hasMatch(phoneNumber!)) {
      return "valid phone";
    } else {
      return "invalid phone";
    }
  }

   //code for amera 
  String? emailValidation(String? input) {
  RegExp reg = RegExp (r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
    if(reg.hasMatch(input??"a")){
      return null;
    }
    return "invalid email";
  }
  /*Minimum 1 Upper case
    Minimum 1 lowercase
    Minimum 1 Numeric Number
    Minimum 1 Special Character*/
   String? passwordValidation(String? value) {
    RegExp regex =
        RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
   
      if (regex.hasMatch(value??" ")) {
         return null;
      } else {
        return 'Enter valid password';
      }}
}
