part of 'banner_repository.dart';

final class BannerRepositoryImpl extends BannerRepository {
  const BannerRepositoryImpl({
    required this.dio,
  });

  final Dio dio;

  @override
  Future<Either<Failure, BannerResponse>> getAllBanners() async {
    try {
      final Response response =
          await dio.get(
              Constants.baseUrl + Urls.getAllBanners,
              options: Options(
                headers: {
                  'Shipper': Constants.shipperId,
                },
              ),
          );
      return Right(BannerResponse.fromJson(response.data));
    } on DioException catch (error, stacktrace) {
      log('Exception occurred: $error stacktrace: $stacktrace');
      return Left(ServerError.withDioError(error: error).failure);
    } on Exception catch (error, stacktrace) {
      log('Exception occured: $error stacktrace: $stacktrace');
      return Left(ServerError.withError(message: error.toString()).failure);
    }
  }
}
