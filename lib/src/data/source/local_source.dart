import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:ploff_kebab/src/core/constants/constants.dart';
import 'package:ploff_kebab/src/core/utils/utils.dart';
import 'package:ploff_kebab/src/data/source/hive/products.dart';

final class LocalSource {
  const LocalSource(this.box, this._dbHive);

  final Box<dynamic> box;
  final Box<Products> _dbHive;

  Future<void> updateQuantity({
    required isSubtract,
    required isDelete,
    required Products product,
  }) async {
    if (isSubtract) {
      if (product.quantity > 1) {
        product.quantity = product.quantity - 1;
        await updateProduct(product);
      } else if (isDelete) {
        await removeProduct(product.id);
      }
    } else {
      product.quantity = product.quantity + 1;
      await updateProduct(product);
    }
  }

  Future<List<Products>> products() async {
    return (_dbHive.values).toList();
  }

  Future<void> insertProduct(Products product) async {
    String uniqueId = product.uniqueId;
    await _dbHive.put(uniqueId, product);
  }

  Future<void> removeProduct(String id) async {
    await _dbHive.delete(id);
  }

  Future<void> updateProduct(Products product) async {
    String uniqueId = product.uniqueId;
    await _dbHive.put(uniqueId, product);
  }

  Future<void> removeAll() async {
    await _dbHive.clear();
  }

  void setHasProfile({
    required bool value,
  }) {
    box.put(AppKeys.hasProfile, value);
  }

  bool get hasProfile => box.get(AppKeys.hasProfile, defaultValue: false) as bool;

  Future<void> setUser({
    required String name,
    required String accessToken,
    required String refreshToken,
    required String userId,
    required String imageUrl,
    required String phone,
    required String email,
    required String login,
  }) async {
    await box.put(AppKeys.hasProfile, true);
    await box.put(AppKeys.phone, phone);
    await box.put(AppKeys.login, login);
    await box.put(AppKeys.email, email);
    await box.put(AppKeys.fullName, name);
    await box.put(AppKeys.accessToken, accessToken);
    await box.put(AppKeys.refreshToken, refreshToken);
    await box.put(AppKeys.userId, userId);
    await box.put(AppKeys.imageUrl, imageUrl);
  }

  Future<void> setUserNd({
    required String id,
    required String name,
    required bool isBlocked,
    required String createdAt,
    required String updatedAt,
    required String accessToken,
    required String refreshToken,
    required int minimalOrderPrice,
  }) async {
    await box.put(AppKeys.id, id);
    await box.put(AppKeys.name, name);
    await box.put(AppKeys.isBlocked, isBlocked);
    await box.put(AppKeys.createdAt, createdAt);
    await box.put(AppKeys.updatedAt, updatedAt);
    await box.put(AppKeys.accessToken, accessToken);
    await box.put(AppKeys.refreshToken, refreshToken);
    await box.put(AppKeys.minimalOrderPrice, minimalOrderPrice);
  }

  Future<void> setUserThird({
    required String phone,
    required String code,
  }) async {
    await box.put(AppKeys.phone, phone);
    await box.put(AppKeys.code, code);
  }

  Future<void> setUserConfirmRegister({
    required String id,
    required String name,
    required String phone,
    required String? createdAt,
    required String? updatedAt,
    required String? accessToken,
    required String? refreshToken,
  }) async {
    await box.put(AppKeys.id, id);
    await box.put(AppKeys.name, name);
    await box.put(AppKeys.phone, phone);
    await box.put(AppKeys.createdAt, createdAt);
    await box.put(AppKeys.updatedAt, updatedAt);
    await box.put(AppKeys.accessToken, accessToken);
    await box.put(AppKeys.refreshToken, refreshToken);
  }

  Future<void> setUserRegister({
    required String message,
  }) async {
    await box.put(AppKeys.message, message);
  }

  String get accessToken => box.get(AppKeys.accessToken, defaultValue: '') as String;

  String get fullName => box.get(AppKeys.fullName, defaultValue: '') as String;

  String get phone => box.get(AppKeys.phone, defaultValue: '') as String;

  String get userId => box.get(AppKeys.userId, defaultValue: '') as String;

  String get id => box.get(AppKeys.id, defaultValue: '') as String;

  String get locale => box.get(
        AppKeys.languageCode,
        defaultValue: defaultLocale,
      ) as String;

  bool get lanSelected => box.get(AppKeys.langSelected, defaultValue: false) is bool
      ? box.get(AppKeys.langSelected, defaultValue: false) as bool
      : false;

  Future<void> setThemeMode(ThemeMode mode) async {
    await box.put(AppKeys.themeMode, mode.name);
  }

  Future<void> setLocale(String lang) async {
    await box.put(AppKeys.languageCode, lang);
  }

  Future<void> setKey(String key, String value) async {
    await box.put(key, value);
  }

  Future<void> setLangSelected({
    required bool value,
  }) async {
    await box.put(AppKeys.langSelected, value);
  }

  String getKey(String key) => box.get(key, defaultValue: '') as String;

  ThemeMode get themeMode => switch (box.get(AppKeys.themeMode)) {
        'system' => ThemeMode.system,
        'light' => ThemeMode.light,
        'dark' => ThemeMode.dark,
        _ => ThemeMode.system,
      };

  Future<void> clear() async {
    await box.clear();
  }

  Future<void> userClear() async {
    await box.delete(AppKeys.hasProfile);
    await box.delete(AppKeys.phone);
    await box.delete(AppKeys.email);
    await box.delete(AppKeys.fullName);
    await box.delete(AppKeys.accessToken);
    await box.delete(AppKeys.refreshToken);
    await box.delete(AppKeys.userId);
    await box.delete(AppKeys.imageUrl);
  }

  Future<void> setYandexKey(String value) async {
    await box.put(AppKeys.yandex, value);
  }

  String getYandexKey() {
    return box.get(AppKeys.yandex, defaultValue: Constants.yandexApiKey);
  }
}
