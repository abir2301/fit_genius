import 'package:app/features/auth/domain/entities/login_request.dart';

class LoginRequestModel extends LoginRequest {
  LoginRequestModel({required String? code}) : super(code: code);

  factory LoginRequestModel.fromJson(Map<String, dynamic> json) {
    return LoginRequestModel(code: json['code']);
  }

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['code'] = code;
    return data;
  }
}
