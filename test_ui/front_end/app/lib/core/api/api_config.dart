class ApiConfig {
  static const String baseUrl = 'http://192.168.1.33:3000/';
  static const String register = 'api/users/register';
  static const String login = 'api/users/login';
  static const String logout = 'api/users/logout';
  static const String checkToken = 'api/users/check';
  // user info inputs
  static const String postProfile = 'api/profiles/post';
  static const String getProfile = 'api/profiles/get';
  static const String putProfile = 'api/users/profiles/put';
  //manage health problems
  // static const String getUserHp = 'api/profiles/post';
  static const String postHp = 'api/users/hp';
  // static const String deleteHp = 'api/profiles/post';
  static const String getHps = 'api/hp';
  // user program
  static const getProgram = 'api/plans/';
  static const getPerformance = 'api/plans/performance';
}
