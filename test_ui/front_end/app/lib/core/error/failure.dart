import 'package:equatable/equatable.dart';

import 'enums.dart';

abstract class Failure extends Equatable {}

class OfflineFailure extends Failure {
  String? message;
  OfflineFailure({
    this.message,
  });
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class ServerFailure extends Failure {
  String? message;
  ServerFailure({
    this.message,
  });
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class EmptyCacheFailure extends Failure {
  String? message;
  EmptyCacheFailure({
    this.message,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class WrongDataFailure extends Failure {
  String? message;
  WrongDataFailure({
    this.message,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class LoginFailure extends Failure {
  List<LoginError>? errors;
  LoginFailure({
    this.errors,
  });

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

class RegisterFailure extends Failure {
  List<RegisterError>? errors;
  RegisterFailure({
    this.errors,
  });

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

class CheckTokenFailure extends Failure {
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

class UnauthenticatedFailure extends Failure {
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

class UserInfoFailure extends Failure {
  List<UserInfoError>? errors;
  UserInfoFailure({this.errors});
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

class HpFailure extends Failure {
  String? message;
  HpFailure({
    this.message,
  });

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

class HpsFailure extends Failure {
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

class ProgramFailure extends Failure {
  ProgramError? error;
  ProgramFailure({
    this.error,
  });
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
class USerProgramFailure extends Failure {
  ProgramError? error;
  USerProgramFailure({
    this.error,
  });
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

