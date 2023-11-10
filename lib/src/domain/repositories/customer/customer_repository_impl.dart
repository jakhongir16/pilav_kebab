part of 'customer_repository.dart';

class CustomerRepositoryImpl implements CustomerRepository {
  CustomerRepositoryImpl({
    required this.dio,
  });

  final Dio dio;

  @override
  Future<Either<Failure, CustomerPhoneResponse>> receiverCustomerByPhone({
    required CustomerPhoneRequest request,
  }) async {
    try {
      final Response response = await dio.post(
          Constants.baseUrl + Urls.customerPhone,
          data: request.toJson(),
          options: Options(
              headers: {
                'Shipper': Constants.shipperId,
              }
          )
      );
      return Right(CustomerPhoneResponse.fromJson(response.data));
    } on DioException catch (error, stacktrace) {
      log('Exception occured $error stacktrace $stacktrace');
      return Left(ServerError
          .withDioError(error: error)
          .failure);
    } on Exception catch (error, stacktrace) {
      log('Exception occured: $error stacktrace: $stacktrace');
      return Left(ServerError
          .withError(message: error.toString())
          .failure);
    }
  }

  @override
  Future<Either<Failure, RegisterConfirmResponse>> registerConfirm({
    required RegisterConfirmRequest request
  }) async {
    try {
      final String idPlatform = Platform.isIOS
      ? Constants.iosPlatformID
      : Constants.androidPlatformID;
      final Response response = await dio.post(
        Constants.baseUrl + Urls.customerRegisterConfirm,
        data: request.toJson(),
        options: Options(
          headers: {
            'Shipper': Constants.shipperId,
            'Platform': idPlatform
          },
        ),
      );
      return Right(RegisterConfirmResponse.fromJson(response.data));
    } on DioException catch (error, stacktrace) {
      log('Exception occured: $error stacktrace: $stacktrace');
      return Left(ServerError
          .withDioError(error: error)
          .failure);
    } on Exception catch (error, stacktrace) {
      log('Exception occured: $error stacktrace: $stacktrace');
      return Left(ServerError
          .withError(message: error.toString())
          .failure);
    }
  }

  // @override
  // Future<Either<Failure, CustomerRegisterResponse>> registerCustomer({
  //   required Map<String, dynamic> request}) async {
  //
  //   try {
  //     final Response response = await dio.post(
  //       Constants.baseUrl + Urls.registerCustomer,
  //       data: request,
  //       options: Options(
  //         headers: {
  //           'Shipper': Constants.shipperId,
  //         },
  //       ),
  //     );
  //     return Right(CustomerRegisterResponse.fromJson(response.data));
  //   } on DioException catch (error, stacktrace) {
  //     log('Exception occurred: $error stacktrace: $stacktrace');
  //     return Left(ServerError.withDioError(error: error).failure);
  //   } on Exception catch (error, stacktrace) {
  //     log('Exception occurred: $error stacktrace: $stacktrace');
  //     return Left(ServerError.withError(message: error.toString()).failure);
  //   }
  // }
  @override
  Future<Either<Failure, CustomerRegisterConfirmResponse>> registerCustomer({
     required CustomerRegisterConfirmResponse request,
  }) async {
    try {
      final Response response = await dio.post(
        Constants.baseUrl + Urls.registerCustomer,
        data: request.toJson(),
        options: Options(
          headers: {
            'Shipper': Constants.shipperId,
          },
        ),
      );
      return Right(CustomerRegisterConfirmResponse.fromJson(response.data));
    }
    on DioException catch (error, stacktrace) {
      log('Exception occurred: $error stacktrace: $stacktrace');
      return Left(ServerError
          .withDioError(error: error)
          .failure);
    }
    on Exception catch (error, stacktrace) {
      log('Exception occurred: $error stacktrace: $stacktrace');
      return Left(ServerError
          .withError(message: error.toString())
          .failure);
    }
  }

  @override
  Future<Either<Failure, CustomerConfirmLoginResponse>> loginConfirm({
    required CustomerConfirmLogin request,
  }) async {
    try {
      final String idPlatform = Platform.isIOS
          ? Constants.iosPlatformID
          : Constants.androidPlatformID;
      final Response response = await dio.post(
        Constants.baseUrl + Urls.customerConfirmLogin,
        data: request.toJson(),
        options: Options(
          headers: {
            'Shipper': Constants.shipperId,
            'Platform': idPlatform,
          },
        ),
      );
      return Right(CustomerConfirmLoginResponse.fromJson(response.data));
    } on DioException catch (error, stacktrace) {
      log('Exception occured: $error stacktrace: $stacktrace');
      return Left(ServerError
          .withDioError(error: error)
          .failure);
    } on Exception catch (error, stacktrace) {
      log('Exception occured: $error stacktrace: $stacktrace');
      return Left(ServerError
          .withError(message: error.toString())
          .failure);
    }
  }

   @override
   Future<Either<Failure, LoginResponse>> loginCustomer({
    required LoginRequest request
   }) async {
     try{
       final response = await dio.post(
         Constants.baseUrl + Urls.customerLogin,
          data: request.toJson(),
          options: Options(
            headers: {
              'Shipper': Constants.shipperId,
            },
          ),
       );
       return Right(LoginResponse.fromJson(response.data));

     }
     on DioException catch (error, stacktrace){
        log('Exception occured $error stacktrace $stacktrace');
        return Left(ServerError.withDioError(error: error).failure);
     } on Exception catch (error, stacktrace) {
       log('Exception occured: $error stacktrace: $stacktrace');
       return Left(ServerError.withError(message: error.toString()).failure);
     }
   }
}
