class User {
  String name;
  int age;
  double height;

  // Constructor
  User({required this.name, required this.age, required this.height});

  // Method to return a map representation of the user
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'age': age,
      'height': height,
    };
  }
}