part of 'product_repository.dart';

class ProductRepositoryImpl implements ProductRepository {
  const ProductRepositoryImpl({required this.dio});

  final Dio dio;

  @override
  Future<Either<Failure, ProductResponseWithId>> productSimple({required String id}) async {
    try {
      final Response response = await dio.get(
        '${Constants.baseUrl}${Urls.productSimple}/$id',
      );
      return Right(ProductResponseWithId.fromJson(response.data));
    } on DioException catch (error, stacktrace) {
      log('Exception occured: $error stacktrace: $stacktrace');
      return Left(ServerError.withDioError(error: error).failure);
    } on Exception catch (error, stacktrace) {
      log('Exception occured: $error stacktrace: $stacktrace');
      return Left(ServerError.withError(message: error.toString()).failure);
    }
  }

  @override
  Future<Either<Failure, ModifierModel>> receiveModifier({
    required String id
    }) async {
    try{
      final Response response = await dio.get(
        Constants.baseUrl + Urls.modifier,
        options: Options(
          headers: {
            'Shipper': Constants.shipperId,
          }
        ),
        queryParameters: {'product_id': id},
      );
      return Right(ModifierModel.fromJson(response.data));
    }
    on DioException catch (error, stacktrace){
      log('Exception occurred: $error stacktrace: $stacktrace');
      return Left(ServerError.withDioError(error: error).failure);
    }
    on Exception catch (error, stacktrace) {
      log('Exception occurred: $error stacktrace: $stacktrace');
      return Left(ServerError.withError(message: error.toString()).failure);
    }

}

  @override
  Future<Either<Failure, Groups>> comboId({required String id}) async {
    try{
      final Response response = await dio.get(
          '${Constants.baseUrl}${Urls.combo}/$id',
        options: Options(
          headers: {
            'Shipper': Constants.shipperId,
          },
        ),
      );
      return Right(Groups.fromJson(response.data, ''));
    }
    on DioException catch (error, stacktrace){
      log('Exception occurred: $error stacktrace: $stacktrace');
      return Left(ServerError.withDioError(error: error).failure);
    }
    on Exception catch (error, stacktrace) {
      log('Exception occurred: $error stacktrace: $stacktrace');
      return Left(ServerError.withError(message: error.toString()).failure);
    }
  }
}
