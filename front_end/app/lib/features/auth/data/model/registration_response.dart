import '../../domain/entities/registration_response.dart';
import '../../domain/entities/user.dart';

class RegistrationResponseModel extends RegistrationResponse {
  RegistrationResponseModel({
    User? user,
    String? token,
    String? codeLogin,
  }) : super(user: user, token: token, codeLogin: codeLogin);
  factory RegistrationResponseModel.fromJson(Map<String, dynamic> json) {
    return RegistrationResponseModel(
      user: json['user'] != null ? new User.fromJson(json['user']) : null,
      token: json['token'],
      codeLogin: json['code_login'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (user != null) {
      data['user'] = user!.toJson();
    }
    data['token'] = token;
    data['code_login'] = codeLogin;
    return data;
  }
}
