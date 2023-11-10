import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:ploff_kebab/src/core/constants/constants.dart';
import 'package:ploff_kebab/src/core/either_dart/either.dart';
import 'package:ploff_kebab/src/data/models/combo/combo_id_response.dart';
import 'package:ploff_kebab/src/data/models/modifier/modifier_model.dart';
import 'package:ploff_kebab/src/data/models/product/product_response_with_id.dart';
import 'package:ploff_kebab/src/domain/failure/failure.dart';
import 'package:ploff_kebab/src/domain/failure/server_error.dart';

part 'product_repository_impl.dart';

abstract class ProductRepository {
  const ProductRepository();

  Future<Either<Failure, ProductResponseWithId>> productSimple({required String id});

  Future<Either<Failure, ModifierModel>> receiveModifier({required String id});

  Future<Either<Failure, Groups>> comboId({required String id});
}
