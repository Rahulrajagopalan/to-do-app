class User {
  final String name;
  final int age;
  final String email;

  User({required this.name, required this.age, required this.email});

  // Factory constructor to create a User from a map (e.g., JSON)
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      name: json['name'],
      age: json['age'],
      email: json['email'],
    );
  }

  // Method to convert a User object to a map
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'age': age,
      'email': email,
    };
  }
}
