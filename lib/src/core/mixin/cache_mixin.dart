import 'package:ploff_kebab/src/config/router/app_routes.dart';

mixin CacheMixin {
  Future<void> setUserInfo({
    required String name,
    required String id,
    required String login,
    required String email,
    required String phoneNumber,
    required String accessToken,
    required String refreshToken,
    required String imageUrl,
  }) async {
    await localSource.setUser(
      name: name,
      userId: id,
      login: login,
      email: email,
      phone: phoneNumber,
      accessToken: accessToken,
      refreshToken: refreshToken,
      imageUrl: imageUrl,
    );
  }

  Future<void> setUserConfirmRegister({
    required String id,
    required String name,
    required String phone,
    required String createdAt,
    required String updatedAt,
    required String accessToken,
    required String refreshToken,
  }) async {
    await localSource.setUserConfirmRegister(
        id: id,
        name: name,
        phone: phone,
        createdAt: createdAt,
        updatedAt: updatedAt,
        accessToken: accessToken,
        refreshToken: refreshToken);
  }

  Future<void> setUserInfoNd({
    required String id,
    required String name,
    required String phone,
    required bool isBlocked,
    required String createdAt,
    required String updatedAt,
    required String accessToken,
    required String refreshToken,
    required int minimalOrderPrice,
  }) async {
    await localSource.setUserNd(
        id: id,
        name: name,
        isBlocked: isBlocked,
        createdAt: createdAt,
        updatedAt: updatedAt,
        accessToken: accessToken,
        refreshToken: refreshToken,
        minimalOrderPrice: minimalOrderPrice);
  }

  Future<void> setUserInfoThird({
    required String code,
    required String phone,
  }) async {
    await localSource.setUserThird(
      code: code,
      phone: phone,
    );
  }

  Future<void> setUserRegister({
    required String message,
  }) async {
    await localSource.setUserRegister(
        message: message
    );
  }
}
