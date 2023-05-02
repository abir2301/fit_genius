import 'dart:convert';

import '../../../../core/api/api_config.dart';
import '../../../../core/error/exceptions.dart';
import '../../../../core/network/dio_helper.dart';

class USerInfoRemoteDataSource {
  Future <Map<String, String>>  postProfile   (int age , String weight , String height , String goal , String activity_level) async {
    final payload ={
      'age': age , 
      "height" : height , 
      'weight': weight , 
      'goal' : goal, 
      "activity_level": activity_level
    }; 

    try{

      final body = await DioHelper.post(ApiConfig.postProfile, payload: payload);
      final map = jsonDecode(body) as Map;



    } throw ServerException();
  }
}