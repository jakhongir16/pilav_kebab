import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:ploff_kebab/src/config/router/app_routes.dart';
import 'package:ploff_kebab/src/core/constants/constants.dart';
import 'package:ploff_kebab/src/core/either_dart/either.dart';
import 'package:ploff_kebab/src/data/models/order/order_model.dart';
import 'package:ploff_kebab/src/domain/failure/failure.dart';
import 'package:ploff_kebab/src/domain/failure/server_error.dart';

part 'order_repository_impl.dart';

abstract class OrderRepository {
  const OrderRepository();
  Future<Either<Failure, OrderModel>> getOrderWithId();
}