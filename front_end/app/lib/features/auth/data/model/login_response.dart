import '../../domain/entities/login_response.dart';
import '../../domain/entities/user.dart';

class LoginResponseModel extends LoginResponse {
  LoginResponseModel({required User? user, String? token})
      : super(user: user, token: token);

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) {
    return LoginResponseModel(
        user: json['user'] != null ? User.fromJson(json['user']) : null,
        token: json['token']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    data['token'] = this.token;
    return data;
  }
}
