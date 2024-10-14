class Password {
  String? _password;

  Password({String? password}) {
    this._password = password;
  }

  // Getter for password
  String? get password => _password;

  // Setter for password
  set password(String? password) {
    _password = password;
  }

  // isValid checks for password length, uppercase, lowercase, and digit
  bool isValid() {
    if (_password == null || _password!.length < 8 || _password!.length > 16) {
      return false;
    }
    bool hasUppercase = _password!.contains(RegExp(r'[A-Z]'));
    bool hasLowercase = _password!.contains(RegExp(r'[a-z]'));
    bool hasDigit = _password!.contains(RegExp(r'[0-9]'));

    return hasUppercase && hasLowercase && hasDigit;
  }

  @override
  String toString() {
    return 'Your Password is: $_password';
  }
}
