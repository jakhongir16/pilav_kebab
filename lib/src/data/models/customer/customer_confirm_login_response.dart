class CustomerConfirmLoginResponse {
  CustomerConfirmLoginResponse({
      this.id, 
      this.name, 
      this.phone, 
      this.isBlocked, 
      this.createdAt, 
      this.updatedAt, 
      this.accessToken, 
      this.refreshToken, 
      this.minimalOrderPrice,});

  CustomerConfirmLoginResponse.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    phone = json['phone'];
    isBlocked = json['is_blocked'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    accessToken = json['access_token'];
    refreshToken = json['refresh_token'];
    minimalOrderPrice = json['minimal_order_price'];
  }
  String? id;
  String? name;
  String? phone;
  bool? isBlocked;
  String? createdAt;
  String? updatedAt;
  String? accessToken;
  String? refreshToken;
  int? minimalOrderPrice;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['phone'] = phone;
    map['is_blocked'] = isBlocked;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    map['access_token'] = accessToken;
    map['refresh_token'] = refreshToken;
    map['minimal_order_price'] = minimalOrderPrice;
    return map;
  }

}