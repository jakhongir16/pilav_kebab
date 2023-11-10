part of 'category_repository.dart';

class CategoryRepositoryImpl implements GetCategoryProductRepository {
  CategoryRepositoryImpl({
    required this.dio,
  });

  final Dio dio;

  @override
  Future<Either<Failure, CategoryWithResponse>> getCategoryRepository() async {
    try {
      final Response response = await dio.get(
        Constants.baseUrl + Urls.categoryWithProducts,

      );
      return Right(CategoryWithResponse.fromJson(response.data));
    } on DioException catch (error, stacktrace) {

      log('Exception occurred: $error stacktrace: $stacktrace');
      return Left(ServerError.withDioError(error: error).failure);
    } on Exception catch (error, stacktrace) {
      log('Exception occurred: $error stacktrace: $stacktrace');
      return Left(ServerError.withError(message: error.toString()).failure);
    }
  }
}


