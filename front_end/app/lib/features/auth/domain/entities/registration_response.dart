import 'package:app/features/auth/domain/entities/user.dart';
import 'package:equatable/equatable.dart';

class RegistrationResponse extends Equatable {
  User? user;
  String? token;
  String? codeLogin;

  RegistrationResponse({this.user, this.token, this.codeLogin});

  // RegistrationResponse.fromJson(Map<String, dynamic> json) {
  //   user = json['user'] != null ? new User.fromJson(json['user']) : null;
  //   token = json['token'];
  //   codeLogin = json['code_login'];
  // }

  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = new Map<String, dynamic>();
  //   if (this.user != null) {
  //     data['user'] = this.user!.toJson();
  //   }
  //   data['token'] = this.token;
  //   data['code_login'] = this.codeLogin;
  //   return data;
  // }

  @override
  List<Object?> get props => [user, token, codeLogin];
}

