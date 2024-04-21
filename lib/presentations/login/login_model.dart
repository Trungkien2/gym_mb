// ignore_for_file: public_member_api_docs, sort_constructors_first
class LoginModel {
  final String? email;
  final String? password;
  final bool isSignIn;
  LoginModel({this.email, this.password, this.isSignIn = false});

  LoginModel copyWith({
    String? email,
    String? password,
  }) {
    return LoginModel(
        email: email ?? this.email,
        password: password ?? this.password,
        isSignIn: isSignIn ?? this.isSignIn);
  }
}
