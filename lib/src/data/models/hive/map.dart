import 'package:hive/hive.dart';

part 'map.g.dart';

@HiveType(typeId: 2)
class MapLocale {
  MapLocale({
    required this.lat,
    required this.long,
    required this.addressName,
  });

  @HiveField(0)
  double lat;

  @HiveField(1)
  double long;

  @HiveField(2)
  String addressName;
}
