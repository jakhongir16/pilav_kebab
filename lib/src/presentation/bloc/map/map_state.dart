part of 'map_bloc.dart';

class MapState extends Equatable{
  const MapState({
   this.chosenMap,
   this.addresses = const [],
});
  final List<MapLocale> addresses;
  final MapModel? chosenMap;

  MapState copyWith({
    List<MapLocale>? addresses,
    MapModel? chosenMap,
}) => MapState(
    chosenMap: chosenMap ?? this.chosenMap,
    addresses: addresses ?? this.addresses,
  );

  @override
  List<Object?> get props => [
    chosenMap,
    addresses,
  ];
}