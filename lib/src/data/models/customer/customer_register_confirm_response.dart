class CustomerRegisterConfirmResponse {
  CustomerRegisterConfirmResponse({
      this.name,
      this.phone, 
     });

  CustomerRegisterConfirmResponse.fromJson(dynamic json) {
    name = json['name'];
    phone = json['phone'];

  }
  String? name;
  String? phone;


  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['phone'] = phone;
    return map;
  }

}