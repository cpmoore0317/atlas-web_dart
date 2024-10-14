import '6-password.dart';

class User extends Password {
  int id;
  String name;
  int age;
  double height;
  Password? _user_password;

  User({
    required this.id,
    required this.name,
    required this.age,
    required this.height,
    String? user_password
  }) : super(password: user_password) {
    _user_password = Password(password: user_password);
  }

  // Getter for user_password
  Password? get user_password => _user_password;

  // Setter for user_password to accept a String and convert it to Password
  set user_password(String? password) {
    _user_password = Password(password: password);
  }

  // Convert User to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'age': age,
      'height': height,
    };
  }

  // Convert from JSON to User
  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(
      id: userJson['id'],
      name: userJson['name'],
      age: userJson['age'],
      height: userJson['height'],
      user_password: userJson['user_password'],
    );
  }

  @override
  String toString() {
    return 'User(id : $id ,name: $name, age: $age, height: $height, Password: ${_user_password?.isValid() ?? false})';
  }
}
