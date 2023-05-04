import 'package:app/features/user_informations/domain/usecases/get_profile_usecase.dart';
import 'package:app/features/user_informations/domain/usecases/post_profile_usecase.dart';
import 'package:get_it/get_it.dart';

import 'package:app/core/network/network_info.dart';
import 'package:app/features/auth/data/datasources/auth_remote_datasource.dart';
import 'package:app/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:app/features/auth/domain/usecases/check_token_usecase.dart';
import 'package:app/features/auth/domain/usecases/login_usecase.dart';
import 'package:app/features/auth/domain/usecases/logout_usecase.dart';
import 'package:app/features/auth/domain/usecases/register_usecase.dart';
import 'package:app/features/auth/presentation/viewmodel/auth_viewmodel.dart';

import 'features/user_informations/data/datasources/remote_data_source.dart';
import 'features/user_informations/data/repositories/profile_repository_impl.dart';
import 'features/user_informations/presentation/viewmodel/profile_viewmodel.dart';

final sl = GetIt.instance;
Future<void> init() async {
  //*? features
  //* auth
  //!viewmodels
  sl.registerLazySingleton(() => AuthViewModel(
      loginUsecase: sl(),
      registerUsecase: sl(),
      logoutUsecase: sl(),
      checkTokenUsecase: sl()));

  sl.registerLazySingleton(() => ProfileViewModel(postProfileUsecase: sl()));
  //!usecases
  sl.registerLazySingleton(
      () => LoginUsecase(authRepository: sl<AuthRepositoryImpl>()));
  sl.registerLazySingleton(
      () => RegisterUsecase(authRepository: sl<AuthRepositoryImpl>()));
  sl.registerLazySingleton(
      () => LogoutUsecase(authRepository: sl<AuthRepositoryImpl>()));
  sl.registerLazySingleton(
      () => CheckTokenUsecase(authRepository: sl<AuthRepositoryImpl>()));

  sl.registerLazySingleton(
      () => PostProfileUsecase(profileRepository: sl<ProfileReposotoryImpl>()));
  sl.registerLazySingleton(
      () => GetProfileUsecase(profileRepository: sl<ProfileReposotoryImpl>()));

  //!repositories
  sl.registerLazySingleton(() => AuthRepositoryImpl(
        authRemoteDatasource: sl(),
        networkInfo: sl<NetworkInfoImpl>(),
      ));

  sl.registerLazySingleton(() => ProfileReposotoryImpl(
        userInfoRemoteDataSource: sl(),
        networkInfo: sl<NetworkInfoImpl>(),
      ));
  //!datasources
  sl.registerLazySingleton(() => AuthRemoteDatasource());
  sl.registerLazySingleton(() => UserInfoRemoteDataSource());
  //* cart
  //!viewmodels

  //*? core
  //* network
  sl.registerLazySingleton(() => NetworkInfoImpl());
}
