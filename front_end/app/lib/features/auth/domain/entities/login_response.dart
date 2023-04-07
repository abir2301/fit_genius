import 'package:app/features/auth/domain/entities/registration_response.dart';
import 'package:app/features/auth/domain/entities/user.dart';
import 'package:equatable/equatable.dart';

class LoginResponse extends Equatable {
  User? user;
  String? token;

  LoginResponse({this.user, this.token});

  // LoginResponse.fromJson(Map<String, dynamic> json) {
  //   user = json['user'] != null ? new User.fromJson(json['user']) : null;
  //   token = json['token'];
  // }

  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = new Map<String, dynamic>();
  //   if (this.user != null) {
  //     data['user'] = this.user!.toJson();
  //   }
  //   data['token'] = this.token;
  //   return data;
  // }

  @override
  // TODO: implement props
  List<Object?> get props => [user, token];
}
