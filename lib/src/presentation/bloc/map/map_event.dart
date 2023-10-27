part of 'map_bloc.dart';

sealed class MapEvent extends Equatable {
  const MapEvent();

  @override
  List<Object> get props => [];
}

class MapChosen extends MapEvent {
  const MapChosen({
    required this.map,
  });

  final MapModel map;
}

class MapLoaded extends MapEvent {}

class MapAdded extends MapEvent {
  const MapAdded({required this.map});

  final MapModel map;
}

class MapRemoved extends MapEvent{
  const MapRemoved({required this.index});
  final int index;
}