import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:geolocator/geolocator.dart';
import 'package:ploff_kebab/src/core/constants/constants.dart';
import 'package:ploff_kebab/src/core/either_dart/either.dart';
import 'package:ploff_kebab/src/domain/failure/failure.dart';
import 'package:ploff_kebab/src/domain/failure/server_error.dart';

part  'map_repository_impl.dart';

abstract class MapYandexRepository {
  const MapYandexRepository();

  Future<Either<Failure, String>> receiveLocationName(String geoCodeText);
  // Future<Either<Failure, Position>> getCurrentLocation();
  // Future<Either<Failure, Position>> getLocationTitle();
  // Future<Either<Failure, String>> addressPost(CustomerAddress address);

}