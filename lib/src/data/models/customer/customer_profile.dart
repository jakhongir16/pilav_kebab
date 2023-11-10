class CustomerProfile {
  CustomerProfile({
      this.id, 
      this.name, 
      this.phone, 
      this.isBlocked, 
      this.createdAt, 
      this.fcmToken, 
      this.tgChatId, 
      this.dateOfBirth, 
      this.registrationSource, 
      this.minimalOrderPrice,});

  CustomerProfile.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    phone = json['phone'];
    isBlocked = json['is_blocked'];
    createdAt = json['created_at'];
    fcmToken = json['fcm_token'];
    tgChatId = json['tg_chat_id'];
    dateOfBirth = json['date_of_birth'];
    registrationSource = json['registration_source'];
    minimalOrderPrice = json['minimal_order_price'];
  }
  String? id;
  String? name;
  String? phone;
  bool? isBlocked;
  String? createdAt;
  String? fcmToken;
  String? tgChatId;
  String? dateOfBirth;
  String? registrationSource;
  int? minimalOrderPrice;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['phone'] = phone;
    map['is_blocked'] = isBlocked;
    map['created_at'] = createdAt;
    map['fcm_token'] = fcmToken;
    map['tg_chat_id'] = tgChatId;
    map['date_of_birth'] = dateOfBirth;
    map['registration_source'] = registrationSource;
    map['minimal_order_price'] = minimalOrderPrice;
    return map;
  }

}