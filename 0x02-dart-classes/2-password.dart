class Password {
  String password = '';

  bool isValid() {
    if (password.length < 8 || password.length > 16) {
      return false;
    }
    
    // Check if password contains at least one uppercase letter
    bool hasUppercase = password.contains(RegExp(r'[A-Z]'));

    // Check if password contains at least one lowercase letter
    bool hasLowercase = password.contains(RegExp(r'[a-z]'));

    // Check if password contains at least one digit
    bool hasDigit = password.contains(RegExp(r'[0-9]'));

    // Return true only if all conditions are met
    return hasUppercase && hasLowercase && hasDigit;
  }

  // Override the toString method
  @override
  String toString() {
    return "Your Password is: $password";
  }
}