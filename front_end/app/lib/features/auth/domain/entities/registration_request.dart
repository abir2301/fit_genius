import 'package:equatable/equatable.dart';

class RegistrationRequest extends Equatable {
  String? fullName;
  String? email;
  String? password;

  RegistrationRequest({this.fullName, this.email, this.password});

  // RegistrationRequest.fromJson(Map<String, dynamic> json) {
  //   fullName = json['fullName'];
  //   email = json['email'];
  //   password = json['password'];
  // }

  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = new Map<String, dynamic>();
  //   data['fullName'] = this.fullName;
  //   data['email'] = this.email;
  //   data['password'] = this.password;
  //   return data;
  // }

  @override
  // TODO: implement props
  List<Object?> get props => [fullName, email, password];
}
