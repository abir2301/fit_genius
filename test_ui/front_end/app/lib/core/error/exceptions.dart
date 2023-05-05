class ServerException implements Exception {
  int? statusCode;
  String? error;
  ServerException({this.statusCode, this.error});
}

class LoginException implements Exception {
  List<String>? messages;
  LoginException({
    this.messages,
  });
}

class RegisterException implements Exception {
  List<String>? messages;
  RegisterException({
    this.messages,
  });
}

class CheckTokenException implements Exception {}

class UnauthenticatedException implements Exception {}

class UserInfoException implements Exception {
  List<String>? messages;
  UserInfoException({
    this.messages,
  });
}

class HpsException implements Exception {}

class HpException implements Exception {
  int? statusCode;
  HpException({
    this.statusCode,
  });
}
