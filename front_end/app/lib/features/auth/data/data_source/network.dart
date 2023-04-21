import 'dart:io';

import 'package:api_cache_manager/utils/cache_manager.dart';
import 'package:app/features/auth/data/data_source/shared_services.dart';
import 'package:app/features/auth/data/model/login_request.dart';
import 'package:app/features/auth/domain/entities/login_request.dart';
import 'package:app/features/auth/domain/entities/user.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:flutter/cupertino.dart';

import '../../../../core/error/exceptions.dart';
import '../model/login_response.dart';

class NetworkHandler {
  Future<String> getWifiIpAddress() async {
    final interfaces = await NetworkInterface.list();
    print('Available interfaces: ${interfaces.map((i) => i.name)}');
    for (final interface in interfaces) {
      if (interface.name == 'wlan0') {
        for (final addr in interface.addresses) {
          if (addr.type == InternetAddressType.IPv4) {
            return addr.address;
          }
        }
      }
    }
    throw Exception('No Wi-Fi IP address found');
  }

  Future<bool> checkServerConnection() async {
    try {
      String api = await dotenv.get("API");

      final client = HttpClient();
      final request = await client.getUrl(Uri.parse(api));
      final response = await request.close();
      final responseBody = await response.transform(utf8.decoder).join();
      if (response.statusCode == HttpStatus.ok &&
          responseBody == 'heyy appiii') {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      return false;
    }
  }

  // var log = Logger();
  // FlutterSecureStorage storage = FlutterSecureStorage();
  // Future get(String url) async {
  //  // String token = await storage.read(key: "token");
  //   url = formater(url);
  //   // /user/register
  //   var response = await http.get(
  //     url,
  //     headers: {"Authorization": "Bearer $token"},
  //   );
  //   if (response.statusCode == 200 || response.statusCode == 201) {
  //     log.i(response.body);

  //     return json.decode(response.body);
  //   }
  //   log.i(response.body);
  //   log.i(response.statusCode);
  // }

  Future<http.Response> post(String url, Map<String, String> body) async {
    // String token = await storage.read(key: "token");
    String baseurl = dotenv.get("API");
    url = baseurl + url;

    print(url);

    var response = await http.post(
      Uri.parse(url),
      headers: {
        "Content-type": "application/json",
        // "Authorization": "Bearer $token"
      },
      body: jsonEncode(body),
    );

    return response;
  }

  // Future<http.Response> patch(String url, Map<String, String> body) async {
  //   String token = await storage.read(key: "token");
  //   url = formater(url);
  //   log.d(body);
  //   var response = await http.patch(
  //     url,
  //     headers: {
  //       "Content-type": "application/json",
  //       "Authorization": "Bearer $token"
  //     },
  //     body: json.encode(body),
  //   );
  //   return response;
  // }

  // Future<http.Response> post1(String url, var body) async {
  //   String token = await storage.read(key: "token");
  //   url = formater(url);
  //   log.d(body);
  //   var response = await http.post(
  //     url,
  //     headers: {
  //       "Content-type": "application/json",
  //       "Authorization": "Bearer $token"
  //     },
  //     body: json.encode(body),
  //   );
  //   return response;
  // }

  // Future<http.StreamedResponse> patchImage(String url, String filepath) async {
  //   url = formater(url);
  //   String token = await storage.read(key: "token");
  //   var request = http.MultipartRequest('PATCH', Uri.parse(url));
  //   request.files.add(await http.MultipartFile.fromPath("img", filepath));
  //   request.headers.addAll({
  //     "Content-type": "multipart/form-data",
  //     "Authorization": "Bearer $token"
  //   });
  //   var response = request.send();
  //   return response;
  // }

  Future<String> formater(String url) async {
    String baseurl = await dotenv.get("API");
    return baseurl + url;
  }

  // NetworkImage getImage(String imageName) {
  //   String url = formater("/uploads//$imageName.jpg");
  //   return NetworkImage(url);
  // }

  Future<bool> loginUser(LoginRequestModel model) async {
    // String token = await storage.read(key: "token");
    String baseurl = dotenv.get("API");
    final url = '${baseurl}api/users/login';

    // ignore: avoid_print
    print(url);

    var response = await http.post(
      Uri.parse(url),
      headers: {
        "Content-type": "application/json",
        // "Authorization": "Bearer $token"
      },
      body: jsonEncode(model.toJson()),
    );
    if (response.statusCode == 200 || response.statusCode == 201) {
      //  print(json.decode(response.body)["user"].toString());

      LoginResponseModel res = LoginResponseModel(
          token: json.decode(response.body)["token"],
          user: User(
              id: json.decode(response.body)["user"]["id"],
              email: json.decode(response.body)["user"]["email"],
              fullName: json.decode(response.body)["user"]["fullName"]));
      await SharedServices.setLoginDetails(res)
          // ignore: avoid_print
          .then((value) => print("add login details "));
    }

    return (response.statusCode == 200 || response.statusCode == 201);
  }

  Future<LoginResponseModel?> getCachedLoginDetails() async {
    if (await SharedServices.isLogedIn()) {
      var cachedData = await APICacheManager().getCacheData("login_details");
      return LoginResponseModel.fromJson(
          cachedData.syncData as Map<String, dynamic>);
    } else {
      EmptyCacheException();
    }
  }
}
