import 'package:api_cache_manager/api_cache_manager.dart';

class SharedServices{
  static Future<bool> isLogedIn() async {
    var isKeyExist = await APICacheManager().isAPICacheKeyExist("login_details");
    return isKeyExist ;
  }
}