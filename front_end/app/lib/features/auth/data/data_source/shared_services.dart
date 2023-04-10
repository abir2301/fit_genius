import 'dart:convert';

import 'package:api_cache_manager/api_cache_manager.dart';
import 'package:api_cache_manager/models/cache_db_model.dart';
import 'package:app/features/auth/data/model/login_response.dart';
import 'package:app/features/auth/data/model/registration_response.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

class SharedServices {
  static Future<bool> isLogedIn() async {
    var isKeyExist =
        await APICacheManager().isAPICacheKeyExist("login_details");
    return isKeyExist;
  }

  static Future<bool> isRegistred() async {
    var isKeyExist =
        await APICacheManager().isAPICacheKeyExist("registration_details");
    return isKeyExist;
  }

  static Future<void> setLoginDetails(LoginResponseModel model) async {
    APICacheDBModel cacheDBModel = APICacheDBModel(
        key: "login_details", syncData: jsonEncode(model.toJson()));
    await APICacheManager().addCacheData(cacheDBModel);
  }

  static Future<void> setRegistrationDetails(
      RegistrationResponseModel model) async {
    APICacheDBModel cacheDBModel = APICacheDBModel(
        key: "registration_details", syncData: jsonEncode(model.toJson()));
    await APICacheManager().addCacheData(cacheDBModel);
  }

  static Future<void> logOut(BuildContext context) async {
    await APICacheManager().deleteCache("login_details");
    Navigator.pushNamedAndRemoveUntil(context, '/login', (route) => false);
  }
}
