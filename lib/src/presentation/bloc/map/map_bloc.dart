import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ploff_kebab/src/config/router/app_routes.dart';
import 'package:ploff_kebab/src/data/models/hive/map.dart';
import 'package:ploff_kebab/src/data/models/map/map_model.dart';
import 'package:ploff_kebab/src/domain/repositories/map/map_repository.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

part 'map_event.dart';
part 'map_state.dart';

class MapBloc extends Bloc<MapEvent, MapState>{
  MapBloc({required MapYandexRepository mapYandexRepository}) :
        _mapYandexRepository = mapYandexRepository,
  super(const MapState()){
    on<MapChosen>(_onMapChosen);
    on<MapRemoved>(_onMapRemoved);
    on<MapAdded>(_onMapAdded);
    on<MapLoaded>(_onMapLoaded);
  }


  final MapYandexRepository _mapYandexRepository;

  Future<void> _onMapChosen(MapChosen event, Emitter<MapState> emit) async {
    final result = await _mapYandexRepository.receiveLocationName(
      '${event.map.long},${event.map.long}'
    );
    result.fold(
    (error) => emit(state.copyWith(chosenMap: state.chosenMap?.copyWith(
      addressName: '',
      lat: event.map.lat,
      long: event.map.long,
    ),
    ),
    ),

    (right) => emit(
      state.copyWith(
        chosenMap: state.chosenMap?.copyWith(
          addressName: right,
          lat: event.map.lat,
          long: event.map.long,
        ),
      ),
    ),
    );
    
  }

  Future<void> _onMapAdded(MapAdded event, Emitter<MapState> emit) async {
    await mapsLocale.addMap(event.map);
    emit(state.copyWith(chosenMap: event.map));
  }

  Future<void> _onMapRemoved(MapRemoved event, Emitter<MapState> emit) async {
    await mapsLocale.removeMap(event.index);
    emit(state.copyWith(addresses: mapsLocale.fetchAllMaps()));
  }

  void _onMapLoaded(MapLoaded event, Emitter<MapState> emit){
    emit(state.copyWith(addresses: mapsLocale.fetchAllMaps()));
  }
}