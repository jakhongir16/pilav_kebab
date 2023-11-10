import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:ploff_kebab/src/core/constants/constants.dart';
import 'package:ploff_kebab/src/core/either_dart/either.dart';
import 'package:ploff_kebab/src/data/models/customer/customer_confirm_login.dart';
import 'package:ploff_kebab/src/data/models/customer/customer_confirm_login_response.dart';
import 'package:ploff_kebab/src/data/models/customer/customer_phone_request.dart';
import 'package:ploff_kebab/src/data/models/customer/customer_phone_response.dart';
import 'package:ploff_kebab/src/data/models/customer/customer_register_confirm_request.dart';
import 'package:ploff_kebab/src/data/models/customer/customer_register_confirm_response.dart';
import 'package:ploff_kebab/src/data/models/customer/login_request.dart';
import 'package:ploff_kebab/src/data/models/customer/login_response.dart';
import 'package:ploff_kebab/src/data/models/customer/register_confirm_request.dart';
import 'package:ploff_kebab/src/data/models/customer/register_confirm_response.dart';
import 'package:ploff_kebab/src/data/models/customer/register_request.dart';
import 'package:ploff_kebab/src/domain/failure/failure.dart';
import 'package:ploff_kebab/src/domain/failure/server_error.dart';

part 'customer_repository_impl.dart';

abstract class CustomerRepository {
  const CustomerRepository();
  Future<Either<Failure, CustomerPhoneResponse>> receiverCustomerByPhone({
   required CustomerPhoneRequest request,
});
  Future<Either<Failure, RegisterConfirmResponse>> registerConfirm({
    required RegisterConfirmRequest request,
});
//   Future<Either<Failure, CustomerRegisterResponse>> registerCustomer({
//       required Map<String, dynamic> request,
// });
   Future<Either<Failure, CustomerRegisterConfirmResponse>> registerCustomer({
    required CustomerRegisterConfirmResponse request,
    });

   Future<Either<Failure, CustomerConfirmLoginResponse>> loginConfirm({
     required CustomerConfirmLogin request,
});

   Future<Either<Failure, LoginResponse>> loginCustomer({
    required LoginRequest request,
});
}