class BannerResponse {
  BannerResponse({
      this.banners, 
      this.count,});

  BannerResponse.fromJson(dynamic json) {
    if (json['banners'] != null) {
      banners = [];
      json['banners'].forEach((v) {
        banners?.add(Banners.fromJson(v));
      });
    }
    count = json['count'];
  }
  List<Banners>? banners;
  String? count;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (banners != null) {
      map['banners'] = banners?.map((v) => v.toJson()).toList();
    }
    map['count'] = count;
    return map;
  }

}

class Banners {
  Banners({
      this.id, 
      this.title, 
      this.position, 
      this.image, 
      this.url, 
      this.active, 
      this.createdAt, 
      this.updatedAt, 
      this.shipperId, 
      this.about,});

  Banners.fromJson(dynamic json) {
    id = json['id'];
    title = json['title'] != null ? Title.fromJson(json['title']) : null;
    position = json['position'];
    image = json['image'];
    url = json['url'];
    active = json['active'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    shipperId = json['shipper_id'];
    about = json['about'];
  }
  String? id;
  Title? title;
  String? position;
  String? image;
  String? url;
  bool? active;
  String? createdAt;
  String? updatedAt;
  String? shipperId;
  String? about;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    if (title != null) {
      map['title'] = title?.toJson();
    }
    map['position'] = position;
    map['image'] = image;
    map['url'] = url;
    map['active'] = active;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    map['shipper_id'] = shipperId;
    map['about'] = about;
    return map;
  }

}

class Title {
  Title({
      this.uz, 
      this.ru, 
      this.en,});

  Title.fromJson(dynamic json) {
    uz = json['uz'];
    ru = json['ru'];
    en = json['en'];
  }
  String? uz;
  String? ru;
  String? en;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['uz'] = uz;
    map['ru'] = ru;
    map['en'] = en;
    return map;
  }

}