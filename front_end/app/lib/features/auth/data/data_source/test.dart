import 'dart:convert';

import 'package:app/features/auth/data/data_source/shared_services.dart';
import 'package:app/features/auth/data/model/login_response.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

import '../../../../core/config.dart';
import '../../../../core/error/exceptions.dart';
import '../../../../core/error/failure.dart';
import '../../../../core/network/network_info.dart';
import '../model/login_request.dart';

class Test {
  final http.Client client;
  Test({
    required this.client,
  });

  Future<Either<Failure?, bool?>> loginTest(LoginRequestModel request) async {
    Map<String, String> requestHeaders = {'content-Type': 'application/json'};
    print("herre ");

    try {
      var response = await client.post(
          Uri.http("192.168.125.1:3000", "/api/users/login"),
          headers: {"Content-Type": "application/json"},
          body: jsonEncode(request.toJson()));
      print("heyyy login services ");
      if (response.statusCode == 200) {
        print("heyyy login services ");
        await SharedServices.setLoginDetails(
                (response.body) as LoginResponseModel)
            .then((value) => print("add login details "));
        return right(true);
      } else {
        print("heyyy login services ");
        return left(ServerFailure());
      }
    } on OfflineException {
      print("heyyy login services ");
      return left(OfflineFailure());
    }
  }
}
