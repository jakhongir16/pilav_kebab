
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:ploff_kebab/src/core/constants/constants.dart';
import 'package:ploff_kebab/src/core/either_dart/either.dart';
import 'package:ploff_kebab/src/core/platform/network_info.dart';
import 'package:ploff_kebab/src/data/models/banner/banner_response.dart';
import 'package:ploff_kebab/src/domain/failure/failure.dart';
import 'package:ploff_kebab/src/domain/failure/server_error.dart';

part 'banner_repository_impl.dart';

abstract class BannerRepository {
    const BannerRepository();

 Future<Either<Failure, BannerResponse>> getAllBanners();
    // Future<Either<Failure, BannerResponse>> getBannerById(
    //     {required String bannerId});
}