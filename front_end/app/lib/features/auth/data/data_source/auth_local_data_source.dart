import 'package:api_cache_manager/api_cache_manager.dart';
import 'package:app/core/error/exceptions.dart';
import 'package:app/features/auth/data/data_source/shared_services.dart';
import 'package:app/features/auth/data/model/login_response.dart';
import 'package:app/features/auth/data/model/registration_response.dart';

import 'package:dartz/dartz.dart';

abstract class AuthLocalDataSource {
  Future<LoginResponseModel> getCachedLoginDetails();
  Future<RegistrationResponseModel> getCachedRegistrationDetails();
}

class AuthLocalDataSourceImp implements AuthLocalDataSource {
  @override
  Future<LoginResponseModel?> getCachedLoginDetails() async {
    if (await SharedServices.isLogedIn()){
      var cachedData = await APICacheManager().getCacheData("login_details");
return  LoginResponseModel.fromJson(cachedData.syncData as Map<String, dynamic>);
    }
    else {
      EmptyCacheException();
    }
 
  }

  @override
  Future<RegistrationResponseModel> getCachedRegistrationDetails() {
    // TODO: implement getCachedRegistrationDetails
    throw UnimplementedError();
  }
}
