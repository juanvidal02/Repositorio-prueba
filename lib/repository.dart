class User {
  final int id;
  final String name;

  User({required this.id, required this.name});

  // Para convertir la respuesta JSON de una API
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      name: json['name'],
    );
  }
}