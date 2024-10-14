class User {
  // Properties
  int id;
  String name;
  int age;
  double height;

  // Constructor
  User({required this.id, required this.name, required this.age, required this.height});

  // Method to convert user data to JSON (Map format)
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'age': age,
      'height': height,
    };
  }

  // Static method to create a User instance from a JSON map
  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(
      id: userJson['id'],
      name: userJson['name'],
      age: userJson['age'],
      height: userJson['height'],
    );
  }

  // Override toString method to return formatted User information
  @override
  String toString() {
    return "User(id : $id ,name: $name,  age: $age, height: $height)";
  }
}
