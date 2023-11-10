class CustomerConfirmLogin {
  CustomerConfirmLogin({
      this.code, 
      this.phone,
  });

  CustomerConfirmLogin.fromJson(dynamic json) {
    code = json['code'];
    phone = json['phone'];
  }
  String? code;
  String? phone;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['code'] = code;
    map['phone'] = phone;
    return map;
  }

}