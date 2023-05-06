import 'dart:async';
import 'dart:convert';

import 'package:app/core/api/api_config.dart';
import 'package:app/core/network/dio_helper.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/error/exceptions.dart';

class ProgramRemoteDataSource {
  Future<Map<String, dynamic>> getProgram() async {
    try {
      final body = await DioHelper.get(
        ApiConfig.getProgram,
      );
      final bodyMap = jsonDecode(body) as Map;
      final data = bodyMap['data'] as Map<String, dynamic>;
      print(data);
      return data;
    } on ServerException catch (e) {
      if (e.statusCode == 422) {
        throw ProgramException();
      }
    }
    throw ServerException();
  }

  Future<Map<String, dynamic>> getPerformance() async {
    try {
      final body = await DioHelper.get(
        ApiConfig.getPerformance,
      );
      final bodyMap = jsonDecode(body) as Map;
      final data = bodyMap as Map<String, dynamic>;
      print(data);
      return data;
    } on ServerException catch (e) {
      if (e.statusCode == 422) {
        throw ProgramException();
      }
    }
    throw ServerException();
  }
}
