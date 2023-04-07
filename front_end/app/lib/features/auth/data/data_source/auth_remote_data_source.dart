import 'dart:convert';

import 'package:app/core/config.dart';
import 'package:app/core/error/exceptions.dart';
import 'package:app/features/auth/data/model/login_request.dart';
import 'package:app/features/auth/data/model/login_response.dart';
import 'package:app/features/auth/data/model/registration_request.dart';
import 'package:app/features/auth/data/model/registration_response.dart';
import 'package:http/http.dart' as http;

abstract class AuthRemoteDataSource {
  Future<bool> login(LoginRequestModel request);
  Future<bool> registration(RegistrationRequestModel request);
  // Future<LoginResponseModel> getLoginDetails();
  // Future<RegistrationResponseModel> getRegistrationDetails();
}

class AuthRemoteDataSourceImp implements AuthRemoteDataSource {
  final http.Client client;
  AuthRemoteDataSourceImp({required this.client});

  @override
  Future<bool> login(LoginRequestModel request) async {
    Map<String, String> requestHeaders = {'content-Type': 'application/json'};
    var url = Uri.http(Config.apiUrl, Config.loginApi);
    var response = await client.post(url,
        headers: requestHeaders, body: jsonEncode(request.toJson()));
        if (response.statusCode ==200){
          return true ;
        }
        else {
          throw ServerException();
        
        }
  }

  @override
  Future<bool> registration(RegistrationRequestModel request) async {
    Map<String, String> requestHeaders = {'content-Type': 'application/json'};
    var url = Uri.http(Config.apiUrl, Config.registrationApi);
    var response = await client.post(url,
        headers: requestHeaders, body: jsonEncode(request.toJson()));
        if (response.statusCode ==200){
          return true ;
        }
        else {
          throw ServerException();
        
        }
  }
}
