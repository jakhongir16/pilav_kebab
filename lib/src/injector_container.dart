import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio_retry_plus/dio_retry_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:ploff_kebab/src/config/router/app_routes.dart';
import 'package:ploff_kebab/src/core/platform/network_info.dart';
import 'package:ploff_kebab/src/data/source/local_source.dart';
import 'package:ploff_kebab/src/presentation/bloc/home/home_bloc.dart';
import 'package:ploff_kebab/src/presentation/bloc/main/main_bloc.dart';
import 'package:ploff_kebab/src/presentation/bloc/splash/bloc/splash_bloc.dart';


import 'core/constants/constants.dart';


final sl = GetIt.instance;
late Box<dynamic> _box;

Future<void> init() async {
  /// External
  await initHive();

  sl.registerLazySingleton(
    () => Dio()
      ..options = BaseOptions(
        contentType: 'application/json',
        sendTimeout: const Duration(seconds: 30),
        receiveTimeout: const Duration(seconds: 30),
        connectTimeout: const Duration(seconds: 30),
        headers: {
          // 'Authorization': 'API-KEY',
          // 'X-API-KEY': Constants.apiKey,
          // 'Resource-Id': Constants.resourceId,
          // 'Environment-Id': Constants.environmentId,
        },
      )
      ..interceptors.addAll(
        [
          LogInterceptor(
            requestBody: kDebugMode,
            responseBody: kDebugMode,
            logPrint: (object) =>
                kDebugMode ? log('dio: ${object.toString()}') : null,
          ),
          if (kDebugMode) chuck.getDioInterceptor(),
        ],
      ),
  );
  sl<Dio>().interceptors.add(
        RetryInterceptor(
          dio: sl<Dio>(),
          toNoInternetPageNavigator: () async => Navigator.pushNamed(
            rootNavigatorKey.currentContext!,
            Routes.internetConnection,
          ),
          accessTokenGetter: () => localSource.accessToken,
          refreshTokenFunction: () async {
            await localSource.userClear();
            await Navigator.pushNamedAndRemoveUntil(
              rootNavigatorKey.currentContext!,
              Routes.initial,
              (route) => false,
            );
          },
        ),
      );

  sl
    ..registerSingleton<LocalSource>(LocalSource(_box))
    ..registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));

  /// main
  mainFeature();
  homeFeature();

  // /// auth
  // authFeature();

  // registerFeature();
}

void mainFeature() {
  /// splash
  sl
    ..registerFactory(SplashBloc.new)
    ..registerLazySingleton(MainBloc.new);
}

 void homeFeature() {
   sl.registerFactory<HomeBloc>(HomeBloc.new);
 }

// void registerFeature() {
//   sl
//     ..registerFactory<RegisterBloc>(() => RegisterBloc(sl()))
//     ..registerLazySingleton<RegisterUserRepository>(
//       () => RegisterUserRepositoryImpl(dio: sl()),
//     );
// }

// void authFeature() {
//   sl
//     ..registerFactory<AuthBloc>(() => AuthBloc(sl()))
//     ..registerFactory<ConfirmCodeBloc>(() => ConfirmCodeBloc(sl()))
//     ..registerLazySingleton<AuthRepository>(
//       () => AuthRepositoryImpl(dio: sl()),
//     );
// }

Future<void> initHive() async {
  const boxName = 'bloc_mobile_box';
  final Directory directory = await getApplicationDocumentsDirectory();
  Hive.init(directory.path);
  _box = await Hive.openBox<dynamic>(boxName);
}
