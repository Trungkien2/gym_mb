// ignore_for_file: public_member_api_docs, sort_constructors_first
class LoginModel {
  final String? email;
  final String? password;
  final String? id;
  final bool isSignIn;
  LoginModel({this.email, this.password, this.isSignIn = false, this.id});

  LoginModel copyWith({String? email, String? password, String? id}) {
    return LoginModel(
        email: email ?? this.email,
        password: password ?? this.password,
        isSignIn: isSignIn ?? this.isSignIn,
        id: id ?? this.id);
  }
}
