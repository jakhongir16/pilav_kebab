import 'package:flutter/material.dart';

part 'app_keys.dart';

sealed class Constants {
  Constants._();
  
  /// test
  static const baseUrl = 'https://test.customer.api.delever.uz';
  static const shipperId = 'd4b1658f-3271-4973-8591-98a82939a664';
  static const imageUrl = 'https://test.cdn.delever.uz/delever/';


  /// id
  static const androidPlatformID = "6bd7c2e3-d35e-47df-93ce-ed54ed53f95f";
  static const iosPlatformID = "f6631db7-09d0-4cd9-a03a-b7a590abb8c1";
  static const String environmentId = 'dcd76a3d-c71b-4998-9e5c-ab1e783264d0';
  static const String apiKey = 'P-JV2nVIRUtgyPO5xRNeYll2mT4F5QG4bS';
  static const String resourceId = 'a97e8954-5d8e-4469-a241-9a9af2ea2978';

  /// discount_v2
  static const String discountWithProducts = '/v2/discount-with-products';




  /// yandex
  static const yandexApiKey = '826a3d7d-0665-4db9-833a-85e8f182f175';

}


sealed class Urls {
  Urls._();

  static const String categoryWithProducts = '/v2/category-with-products';
  static const String getAllBanners = '/v1/banner';
  static const String getBanner = '/v1/banner/{banner_id}';
  static const String productAddToOrder = '/v2/product-add-to-order';
}

// The splash page animation duration.
const Duration splashPageAnimationDuration = Duration(milliseconds: 1500);

// The animation display duration.
const Duration animationDuration = Duration(milliseconds: 300);