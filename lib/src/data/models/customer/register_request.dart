class RegisterRequest {
  RegisterRequest({
    this.name,
    this.phone,
    this.registrationSource,
  });

  RegisterRequest.fromJson(Map<String, dynamic> json) {
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


// class RegisterRequest {
//   RegisterRequest({
//       this.name,
//       this.phone,});
//
//   RegisterRequest.fromJson(dynamic json) {
//     name = json['name'];
//     phone = json['phone'];
//   }
//   String? name;
//   String? phone;
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['name'] = name;
//     map['phone'] = phone;
//     return map;
//   }
//
// }