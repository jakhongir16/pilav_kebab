class CustomerPhoneRequest {
  CustomerPhoneRequest({
      this.phone,
  });

  CustomerPhoneRequest.fromJson(dynamic json) {
    phone = json['phone'];
  }
  String? phone;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['phone'] = phone;
    return map;
  }

}