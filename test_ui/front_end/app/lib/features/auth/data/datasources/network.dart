import 'dart:io';

import 'package:api_cache_manager/utils/cache_manager.dart';

import 'package:app/features/auth/domain/entities/user.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:flutter/cupertino.dart';

import '../../../../core/error/exceptions.dart';

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
}
