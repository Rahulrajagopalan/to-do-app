class User {

  // variables

  final String name;
  final int age;
  final String email;

  // contructor

  User({required this.name, required this.age, required this.email});

  // json maping
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      name: json['name'],
      age: json['age'],
      email: json['email'],
    );
  }

  // to json

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'age': age,
      'email': email,
    };
  }
}
