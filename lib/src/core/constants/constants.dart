import 'package:flutter/material.dart';

part 'app_keys.dart';

sealed class Constants {
  Constants._();
  
  /// test
  static const baseUrl = 'https://test.customer.api.delever.uz/';
  static const shipperId = 'd4b1658f-3271-4973-8591-98a82939a664';
  static const imageUrl = 'https://test.cdn.delever.uz/delever/';


  /// id
  static const androidPlatformID = "6bd7c2e3-d35e-47df-93ce-ed54ed53f95f";
  static const iosPlatformID = "f6631db7-09d0-4cd9-a03a-b7a590abb8c1";
}

// The splash page animation duration.
const Duration splashPageAnimationDuration = Duration(milliseconds: 1500);

// The animation display duration.
const Duration animationDuration = Duration(milliseconds: 300);