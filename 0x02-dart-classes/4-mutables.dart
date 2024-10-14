class Password {
  // Private password property
  String _password;

  // Constructor to initialize the private password
  Password({required String password}) : _password = password;

  // Getter for the password
  String get password => _password;

  // Setter for the password
  set password(String newPassword) {
    _password = newPassword;
  }

  // Method to check if the password is valid
  bool isValid() {
    if (_password.length < 8 || _password.length > 16) {
      return false;
    }

    bool hasUppercase = _password.contains(RegExp(r'[A-Z]'));
    bool hasLowercase = _password.contains(RegExp(r'[a-z]'));
    bool hasDigit = _password.contains(RegExp(r'[0-9]'));

    return hasUppercase && hasLowercase && hasDigit;
  }

  // Override the toString method
  @override
  String toString() {
    return "Your Password is: $_password";
  }
}
