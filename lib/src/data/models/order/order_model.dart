class OrderModel {
  OrderModel({
      this.count, 
      this.orders,});

  OrderModel.fromJson(dynamic json) {
    count = json['count'];
    if (json['orders'] != null) {
      orders = [];
      json['orders'].forEach((v) {
        orders?.add(Orders.fromJson(v));
      });
    }
  }
  String? count;
  List<Orders>? orders;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['count'] = count;
    if (orders != null) {
      map['orders'] = orders?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class Orders {
  Orders({
      this.apartment, 
      this.building, 
      this.clientId, 
      this.clientName, 
      this.clientPhoneNumber, 
      this.coDeliveryPrice, 
      this.courier, 
      this.courierId, 
      this.createdAt, 
      this.deliveryPrice, 
      this.deliveryTime, 
      this.deliveryType, 
      this.description, 
      this.externalOrderId, 
      this.extraPhoneNumber, 
      this.finishedAt, 
      this.floor, 
      this.id, 
      this.isCourierCall, 
      this.orderAmount, 
      this.paid, 
      this.paymentType, 
      this.posId, 
      this.rating, 
      this.review, 
      this.source, 
      this.statusId, 
      this.statusNotes, 
      this.steps, 
      this.toAddress, 
      this.toLocation,});

  Orders.fromJson(dynamic json) {
    apartment = json['apartment'];
    building = json['building'];
    clientId = json['client_id'];
    clientName = json['client_name'];
    clientPhoneNumber = json['client_phone_number'];
    coDeliveryPrice = json['co_delivery_price'];
    courier = json['courier'] != null ? Courier.fromJson(json['courier']) : null;
    courierId = json['courier_id'];
    createdAt = json['created_at'];
    deliveryPrice = json['delivery_price'];
    deliveryTime = json['delivery_time'];
    deliveryType = json['delivery_type'];
    description = json['description'];
    externalOrderId = json['external_order_id'];
    extraPhoneNumber = json['extra_phone_number'];
    finishedAt = json['finished_at'];
    floor = json['floor'];
    id = json['id'];
    isCourierCall = json['is_courier_call'];
    orderAmount = json['order_amount'];
    paid = json['paid'];
    paymentType = json['payment_type'];
    posId = json['pos_id'];
    rating = json['rating'];
    review = json['review'];
    source = json['source'];
    statusId = json['status_id'];
    if (json['status_notes'] != null) {
      statusNotes = [];
      json['status_notes'].forEach((v) {
        statusNotes?.add(StatusNotes.fromJson(v));
      });
    }
    if (json['steps'] != null) {
      steps = [];
      json['steps'].forEach((v) {
        steps?.add(Steps.fromJson(v));
      });
    }
    toAddress = json['to_address'];
    toLocation = json['to_location'] != null ? ToLocation.fromJson(json['to_location']) : null;
  }
  String? apartment;
  String? building;
  String? clientId;
  String? clientName;
  String? clientPhoneNumber;
  int? coDeliveryPrice;
  Courier? courier;
  String? courierId;
  String? createdAt;
  int? deliveryPrice;
  String? deliveryTime;
  String? deliveryType;
  String? description;
  String? externalOrderId;
  String? extraPhoneNumber;
  String? finishedAt;
  String? floor;
  String? id;
  bool? isCourierCall;
  int? orderAmount;
  bool? paid;
  String? paymentType;
  String? posId;
  String? rating;
  String? review;
  String? source;
  String? statusId;
  List<StatusNotes>? statusNotes;
  List<Steps>? steps;
  String? toAddress;
  ToLocation? toLocation;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['apartment'] = apartment;
    map['building'] = building;
    map['client_id'] = clientId;
    map['client_name'] = clientName;
    map['client_phone_number'] = clientPhoneNumber;
    map['co_delivery_price'] = coDeliveryPrice;
    if (courier != null) {
      map['courier'] = courier?.toJson();
    }
    map['courier_id'] = courierId;
    map['created_at'] = createdAt;
    map['delivery_price'] = deliveryPrice;
    map['delivery_time'] = deliveryTime;
    map['delivery_type'] = deliveryType;
    map['description'] = description;
    map['external_order_id'] = externalOrderId;
    map['extra_phone_number'] = extraPhoneNumber;
    map['finished_at'] = finishedAt;
    map['floor'] = floor;
    map['id'] = id;
    map['is_courier_call'] = isCourierCall;
    map['order_amount'] = orderAmount;
    map['paid'] = paid;
    map['payment_type'] = paymentType;
    map['pos_id'] = posId;
    map['rating'] = rating;
    map['review'] = review;
    map['source'] = source;
    map['status_id'] = statusId;
    if (statusNotes != null) {
      map['status_notes'] = statusNotes?.map((v) => v.toJson()).toList();
    }
    if (steps != null) {
      map['steps'] = steps?.map((v) => v.toJson()).toList();
    }
    map['to_address'] = toAddress;
    if (toLocation != null) {
      map['to_location'] = toLocation?.toJson();
    }
    return map;
  }

}

class ToLocation {
  ToLocation({
      this.lat, 
      this.long,});

  ToLocation.fromJson(dynamic json) {
    lat = json['lat'];
    long = json['long'];
  }
  double? lat;
  double? long;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['lat'] = lat;
    map['long'] = long;
    return map;
  }

}

class Steps {
  Steps({
      this.address, 
      this.branchId, 
      this.branchName, 
      this.description, 
      this.destinationAddress, 
      this.externalStepId, 
      this.location, 
      this.phoneNumber,});

  Steps.fromJson(dynamic json) {
    address = json['address'];
    branchId = json['branch_id'];
    branchName = json['branch_name'];
    description = json['description'];
    destinationAddress = json['destination_address'];
    externalStepId = json['external_step_id'];
    location = json['location'] != null ? Location.fromJson(json['location']) : null;
    phoneNumber = json['phone_number'];
  }
  String? address;
  String? branchId;
  String? branchName;
  String? description;
  String? destinationAddress;
  String? externalStepId;
  Location? location;
  String? phoneNumber;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['address'] = address;
    map['branch_id'] = branchId;
    map['branch_name'] = branchName;
    map['description'] = description;
    map['destination_address'] = destinationAddress;
    map['external_step_id'] = externalStepId;
    if (location != null) {
      map['location'] = location?.toJson();
    }
    map['phone_number'] = phoneNumber;
    return map;
  }

}

class Location {
  Location({
      this.lat, 
      this.long,});

  Location.fromJson(dynamic json) {
    lat = json['lat'];
    long = json['long'];
  }
  double? lat;
  double? long;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['lat'] = lat;
    map['long'] = long;
    return map;
  }

}

class StatusNotes {
  StatusNotes({
      this.createdAt, 
      this.description, 
      this.id, 
      this.statusId,});

  StatusNotes.fromJson(dynamic json) {
    createdAt = json['created_at'];
    description = json['description'];
    id = json['id'];
    statusId = json['status_id'];
  }
  String? createdAt;
  String? description;
  String? id;
  String? statusId;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['created_at'] = createdAt;
    map['description'] = description;
    map['id'] = id;
    map['status_id'] = statusId;
    return map;
  }

}

class Courier {
  Courier({
      this.courierType, 
      this.firstName, 
      this.lastName, 
      this.location, 
      this.phone, 
      this.vehicleNumber,});

  Courier.fromJson(dynamic json) {
    courierType = json['courier_type'] != null ? CourierType.fromJson(json['courier_type']) : null;
    firstName = json['first_name'];
    lastName = json['last_name'];
    location = json['location'] != null ? Location.fromJson(json['location']) : null;
    phone = json['phone'];
    vehicleNumber = json['vehicle_number'];
  }
  CourierType? courierType;
  String? firstName;
  String? lastName;
  Location? location;
  String? phone;
  String? vehicleNumber;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (courierType != null) {
      map['courier_type'] = courierType?.toJson();
    }
    map['first_name'] = firstName;
    map['last_name'] = lastName;
    if (location != null) {
      map['location'] = location?.toJson();
    }
    map['phone'] = phone;
    map['vehicle_number'] = vehicleNumber;
    return map;
  }

}


class CourierType {
  CourierType({
      this.distanceFrom, 
      this.distanceTo, 
      this.icon, 
      this.id, 
      this.name, 
      this.shipperId, 
      this.workingHours,});

  CourierType.fromJson(dynamic json) {
    distanceFrom = json['distance_from'];
    distanceTo = json['distance_to'];
    icon = json['icon'];
    id = json['id'];
    name = json['name'];
    shipperId = json['shipper_id'];
    if (json['working_hours'] != null) {
      workingHours = [];
      json['working_hours'].forEach((v) {
        workingHours?.add(WorkingHours.fromJson(v));
      });
    }
  }
  int? distanceFrom;
  int? distanceTo;
  String? icon;
  String? id;
  String? name;
  String? shipperId;
  List<WorkingHours>? workingHours;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['distance_from'] = distanceFrom;
    map['distance_to'] = distanceTo;
    map['icon'] = icon;
    map['id'] = id;
    map['name'] = name;
    map['shipper_id'] = shipperId;
    if (workingHours != null) {
      map['working_hours'] = workingHours?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class WorkingHours {
  WorkingHours({
      this.courierTypeId, 
      this.dayNumber, 
      this.endTime, 
      this.id, 
      this.isActive, 
      this.startTime,});

  WorkingHours.fromJson(dynamic json) {
    courierTypeId = json['courier_type_id'];
    dayNumber = json['day_number'];
    endTime = json['end_time'];
    id = json['id'];
    isActive = json['is_active'];
    startTime = json['start_time'];
  }
  String? courierTypeId;
  int? dayNumber;
  String? endTime;
  String? id;
  bool? isActive;
  String? startTime;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['courier_type_id'] = courierTypeId;
    map['day_number'] = dayNumber;
    map['end_time'] = endTime;
    map['id'] = id;
    map['is_active'] = isActive;
    map['start_time'] = startTime;
    return map;
  }

}