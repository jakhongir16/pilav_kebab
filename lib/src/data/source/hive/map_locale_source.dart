import 'package:hive/hive.dart';
import 'package:ploff_kebab/src/data/models/hive/map.dart';
import 'package:ploff_kebab/src/data/models/map/map_model.dart';

class MapLocaleSource {
  const MapLocaleSource(this.box);

  final Box<MapLocale> box;

  Future<void> addMap(MapModel map) async {
    final mapNew = MapLocale(
        lat: map.lat,
        long: map.long,
        addressName: map.addressName
    );
    await box.add(mapNew);
  }

  Future<void> removeMap(int index) async {
    await box.deleteAt(index);
  }

  Future<void> removeAllMaps() async {
    await box.clear();
  }

  List<MapLocale> fetchAllMaps() => box.values.toList();
}