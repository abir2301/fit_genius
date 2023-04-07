import 'package:app/features/auth/domain/entities/registration_request.dart';

class RegistrationRequestModel extends RegistrationRequest {
  RegistrationRequestModel(
      {required String fullName,
      required String email,
      required String password})
      : super(fullName: fullName, email: email, password: password);
  factory RegistrationRequestModel.fromJson(Map<String, dynamic> json) {
    return RegistrationRequestModel(
      fullName: json['fullName'],
      email: json['email'],
      password: json['password'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['fullName'] = this.fullName;
    data['email'] = this.email;
    data['password'] = this.password;
    return data;
  }
}
