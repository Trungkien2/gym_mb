class RegisterModel {
  final String? email;
  final String? password;
  final String? name;
  RegisterModel({this.email, this.password, this.name});

  RegisterModel copyWith({
    String? email,
    String? password,
    String? name,
  }) {
    return RegisterModel(
        email: email ?? this.email,
        password: password ?? this.password,
        name: name ?? this.name);
  }
}
