part 'app_keys.dart';

sealed class Constants {
  Constants._();
  
  /// test
  static const baseUrl = 'https://test.customer.api.delever.uz';
  static const shipperId = 'd4b1658f-3271-4973-8591-98a82939a664';
  static const imageUrl = 'https://test.cdn.delever.uz/delever/';
  static const shipperIdNd = '4e1c1e9b-bc2e-4ed9-8490-7f693e862a56';

  /// id
  static const androidPlatformID = "6bd7c2e3-d35e-47df-93ce-ed54ed53f95f";
  static const iosPlatformID = "f6631db7-09d0-4cd9-a03a-b7a590abb8c1";
  static const String environmentId = 'dcd76a3d-c71b-4998-9e5c-ab1e783264d0';
  static const String apiKey = 'P-JV2nVIRUtgyPO5xRNeYll2mT4F5QG4bS';
  static const String resourceId = 'a97e8954-5d8e-4469-a241-9a9af2ea2978';

  /// discount_v2
  static const String discountWithProducts = '/v2/discount-with-products';




  /// yandex
  static const yandexApiKey = '28d72214-ea32-406e-b6c1-36a3c3d1043a';
  static const yandexApiKey1 = '8497dd79-b8e6-4f81-9f83-4a6d3a4542c1';
  static const yandexApiKey2 = 'f5d1fe42-debc-427d-a77b-52273d3bbf2c';
  static const yandexApiKey3 = '7d739c60-443b-4b1e-be24-4a24b7c5990f';
  static const yandexUrl = 'https://geocode-maps.yandex.ru';
}


sealed class Urls {
  Urls._();

  static const String categoryWithProducts = '/v2/category-with-products';
  static const String getAllBanners = '/v1/banner';
  static const String getBanner = '/v1/banner/{banner_id}';
  static const String productAddToOrder = '/v2/product-add-to-order';
  static const String getAllProduct = '/v2/product';
  static const String registerCustomer = '/v1/customers/register';
  static const String customerPhone = '/v1/customers/phone';
  static const String customerConfirmLogin = '/v1/customers/confirm-login';
  static const String customerLogin = '/v1/customers/login';
  static const String customerRegisterConfirm = '/v1/customers/register-confirm';
  static const String orderCustomer = '/v1/order';
  static const String productSimple = '/v2/product';
  static const String variantProduct = 'variants';
  static const String modifier = '/v2/modifier';
  static const String combo = '/v2/combo/';
  static const String onePointX = '/1.x/';
}

// The splash page animation duration.
const Duration splashPageAnimationDuration = Duration(milliseconds: 1500);

// The animation display duration.
const Duration animationDuration = Duration(milliseconds: 300);