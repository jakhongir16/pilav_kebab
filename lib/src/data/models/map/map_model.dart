import 'package:equatable/equatable.dart';

class MapModel extends Equatable {
  const MapModel({
    required this.lat,
    required this.long,
    required this.addressName,
  });

  final String addressName;
  final double lat;
  final double long;

  MapModel copyWith({
    double? lat,
    double? long,
    String? addressName,
  }) =>
      MapModel(
          lat: lat ?? this.lat,
          long: long ?? this.long,
          addressName: addressName ?? this.addressName);

  @override
  List<Object?> get props => [
        lat,
        long,
        addressName,
      ];
}
