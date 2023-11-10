class CustomerRegisterRequest {
  CustomerRegisterRequest({
      this.name, 
      this.phone, 
      this.registrationSource,
  });

  CustomerRegisterRequest.fromJson(dynamic json) {
    name = json['name'];
    phone = json['phone'];
    registrationSource = json['registration_source'];
  }
  String? name;
  String? phone;
  String? registrationSource;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['phone'] = phone;
    map['registration_source'] = registrationSource;
    return map;
  }

}