import 'dart:convert';

import '../../../../core/api/api_config.dart';
import '../../../../core/error/exceptions.dart';
import '../../../../core/network/dio_helper.dart';

class UserInfoRemoteDataSource {
  Future<Map<String, dynamic>> postProfile(int age, String weight,
      String height, String goal, String activity_level, String gender) async {
    final payload = {
      'age': age,
      "height": height,
      'weight': weight,
      'goal': goal,
      'gender': gender,
      "activity_level": activity_level
    };

    try {
      final body =
          await DioHelper.post(ApiConfig.postProfile, payload: payload);
      final map = jsonDecode(body) as Map;
      final profile = map['data'] as Map<String, dynamic>;
      return profile;
    } on ServerException catch (e) {
      if (e.statusCode == 401) {
        throw UnauthenticatedException();
      }
      if (e.statusCode == 422) {
        List<String>? messages;
        if (e.error != null) {
          messages = [];
          Map errorJson = jsonDecode(e.error!)['errors'];
          if (errorJson.containsKey('weight')) {
            messages.addAll(errorJson['weight'].cast<String>());
          }
          if (errorJson.containsKey('height')) {
            messages.addAll(errorJson['height'].cast<String>());
          }
          if (errorJson.containsKey('age')) {
            messages.addAll(errorJson['age'].cast<String>());
          }
          if (errorJson.containsKey('gender')) {
            messages.addAll(errorJson['gender'].cast<String>());
          }
          if (errorJson.containsKey('activity_level')) {
            messages.addAll(errorJson['activity_level'].cast<String>());
          }
          throw UserInfoException(messages: messages);
        }
      }
    }
    throw ServerException();
  }

  Future<Map<String, String>> getProfile() async {
    try {
      final body = await DioHelper.get(ApiConfig.getProfile);
      final map = jsonDecode(body) as Map;
      final profile = map['data'] as Map<String, String>;
      return profile;
    } on ServerException catch (error) {
      print(" get profile error ${error}");
      throw ServerException();
    }
  }

  Future<Map<String, String>> putProfile(int age, String weight, String height,
      String goal, String activity_level, String gender) async {
    final payload = {
      'age': age,
      "height": height,
      'weight': weight,
      'goal': goal,
      'gender': gender,
      "activity_level": activity_level
    };

    try {
      final body = await DioHelper.post(ApiConfig.putProfile, payload: payload);
      final map = jsonDecode(body) as Map;
      final profile = map['data'] as Map<String, String>;
      return profile;
    } on ServerException catch (e) {
      if (e.statusCode == 422) {
        List<String>? messages;
        if (e.error != null) {
          messages = [];
          Map errorJson = jsonDecode(e.error!)['errors'];
          if (errorJson.containsKey('weight')) {
            messages.addAll(errorJson['weight'].cast<String>());
          }
          if (errorJson.containsKey('height')) {
            messages.addAll(errorJson['height'].cast<String>());
          }
          if (errorJson.containsKey('age')) {
            messages.addAll(errorJson['age'].cast<String>());
          }
          if (errorJson.containsKey('gender')) {
            messages.addAll(errorJson['gender'].cast<String>());
          }
          if (errorJson.containsKey('activity_level')) {
            messages.addAll(errorJson['activity_level'].cast<String>());
          }
          throw UserInfoException(messages: messages);
        }
      }
    }
    throw ServerException();
  }
}
