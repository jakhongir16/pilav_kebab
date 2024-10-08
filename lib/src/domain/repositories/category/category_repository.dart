import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:ploff_kebab/src/core/constants/constants.dart';
import 'package:ploff_kebab/src/core/either_dart/either.dart';
import 'package:ploff_kebab/src/data/models/get_category_product/CategoryWithProduct.dart';
import 'package:ploff_kebab/src/data/models/get_category_product/category_with_json.dart';
import 'package:ploff_kebab/src/data/models/get_category_product/category_with_products.dart';
import 'package:ploff_kebab/src/data/models/get_category_product/category_with_response.dart';


import 'package:ploff_kebab/src/domain/failure/failure.dart';
import 'package:ploff_kebab/src/domain/failure/server_error.dart';

part 'category_repository_impl.dart';

abstract class GetCategoryProductRepository {
  const GetCategoryProductRepository();
  Future<Either<Failure, CategoryWithResponse>> getCategoryRepository();

}