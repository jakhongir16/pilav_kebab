part of 'map_repository.dart';

class MapYandexRepositoryImpl implements MapYandexRepository {

  final Dio dio;

  MapYandexRepositoryImpl({required this.dio});

  @override
  Future<Either<Failure, String>> receiveLocationName(
      String geoCodeText) async {
    try {
      final Map<String, String> qParams = {
        'apikey': Constants.yandexApiKey,
        'geocode': geoCodeText,
        'lang': 'uz_Uz',
        'format': 'json',
        'rspn': '1',
        'results': '1',

      };
      final Response response = await dio.get(
          '${Constants.yandexUrl}${Urls.onePointX}',
         // queryParameters: qParams
      );
      String simpleText = '';
      if (response.statusCode! >= 200 && response.statusCode! < 300) {
        final data = response.data;
        log('object ${data['response']['GeoObjectCollection'].toString()}');
        if ((data['response']['GeoObjectCollection']['featureMember'] as List)
            .isNotEmpty) {
          simpleText =
          (data['response']['GeoObjectionCollection']['featureMember'] as List)
              .first['GeoObject']['metaDataProperty']['GeocoderMetaData']['text'];
        }
        return Right(simpleText);
      } else {
        throw Exception();
      }
    } on DioException catch (error) {
      return Left(ServerError
          .withDioError(error: error)
          .failure);
    } on Exception catch (error) {
      return Left(ServerError
          .withError(message: error.toString())
          .failure);
    }
  }

  }
