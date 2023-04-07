import 'package:equatable/equatable.dart';

class LoginRequest extends Equatable {
  String? code;

  LoginRequest({this.code});

  LoginRequest.fromJson(Map<String, dynamic> json) {
    code = json['code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    return data;
  }

  @override
  // TODO: implement props
  List<Object?> get props => [code];
}
