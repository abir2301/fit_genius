import 'dart:io';

import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:flutter/cupertino.dart';

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
      final client = HttpClient();
      final request =
          await client.getUrl(Uri.parse('http://192.168.1.43:3000'));
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

  String baseurl = "http://192.168.1.43:3000/";
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

  Future<http.Response?> post(String url, Map<String, String> body) async {
    //String token = await storage.read(key: "token");
    url = formater(url);
    print(url);
    if (await checkServerConnection()) {
      var response = await http.post(
        Uri.parse(url),
        headers: {
          "Content-type": "application/json",
          // "Authorization": "Bearer $token"
        },
        body: jsonEncode(body),
      );

      return response;
    } else {
      return null;
    }
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

  String formater(String url) {
    return baseurl + url;
  }

  // NetworkImage getImage(String imageName) {
  //   String url = formater("/uploads//$imageName.jpg");
  //   return NetworkImage(url);
  // }
}
