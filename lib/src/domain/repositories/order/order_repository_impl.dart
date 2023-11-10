part of 'order_repository.dart';


class OrderRepositoryImpl implements OrderRepository {
  const OrderRepositoryImpl({required this.dio});
  final Dio dio;

  @override
  Future<Either<Failure, OrderModel>> getOrderWithId() async {
    try{
      final Response response = await dio.get(
        Constants.baseUrl + Urls.orderCustomer,
        options: Options(
          headers: {
           "Authorization": localSource.accessToken,
           'Shipper': Constants.shipperId,
          },
        ),
      );
      return Right(OrderModel.fromJson(response.data));
    } on DioException catch (error, stacktrace) {
      log('Exception occured: $error stacktrace: $stacktrace');
      return Left(ServerError.withDioError(error: error).failure);
    } on Exception catch (error, stacktrace) {
      log('Exception occured: $error stacktrace: $stacktrace');
      return Left(ServerError.withError(message: error.toString()).failure);
    }
  }
}