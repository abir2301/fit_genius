import 'dart:async';
import 'dart:convert';

import 'package:app/core/api/api_config.dart';
import 'package:app/core/network/dio_helper.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/error/exceptions.dart';
import '../../domain/models/hp.dart';

class HpRemoteDataSource {
  FutureOr<Map<String, dynamic>> getHps(String type) async {
    final payload = {'type': type};
    try {
      print(type);
      final body = await DioHelper.get(ApiConfig.getHps, payload: payload);
      final bodyMap = jsonDecode(body) as Map;
      final data = bodyMap['data'] as Map<String, dynamic>;
      print(data);
      return data;
    } on ServerException catch (e) {
      if (e.statusCode == 422) {
        throw HpsException();
      }
    }
    throw ServerException();
  }

  // Future<Map<String, dynamic>> getUserHp() async {
  //   try {
  //     final body = await DioHelper.get(ApiConfig.getUserHp);
  //     final bodyMap = jsonDecode(body) as Map;
  //     final data = bodyMap['data'];
  //     return data;
  //   } on ServerException catch (e) {
  //     if (e.statusCode == 401) {
  //       throw UnauthenticatedException();
  //     } else {
  //       if (e.statusCode == 422) {
  //         throw HpsException();
  //       }
  //     }
  //   }
  //   throw ServerException();
  // }

  Future<Unit> postHp(Hps hps) async {
    final payload = {"list": hps.data};
    try {
      final body = await DioHelper.post(ApiConfig.postHp, payload: payload);
      final map = jsonDecode(body) as Map;
      final userHp = map['data'];
      return userHp;
    } on ServerException catch (e) {
      if (e.statusCode == 422) {
        throw HpsException();
      }
    }
    throw ServerException();
  }

  // Future<Map<String, dynamic>> deleteHp(String name) async {
  //   final payload = {"name": name};
  //   try {
  //     final body = await DioHelper.delete(ApiConfig.deleteHp, payload: payload);
  //     final map = jsonDecode(body) as Map;
  //     final userHp = map['data'];
  //     return userHp;
  //   } on ServerException catch (e) {
  //     if (e.statusCode == 422) {
  //       throw HpsException();
  //     }
  //   }
  //   throw ServerException();
  // }
}
