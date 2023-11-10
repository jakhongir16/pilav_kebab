import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:ploff_kebab/src/config/theme/themes.dart';
import 'package:ploff_kebab/src/core/extension/extension.dart';
import 'package:ploff_kebab/src/core/utils/utils.dart';
import 'package:ploff_kebab/src/data/models/map/map_model.dart';
import 'package:ploff_kebab/src/domain/repositories/map/location_repository.dart';
import 'package:ploff_kebab/src/presentation/bloc/map/map_bloc.dart';
import 'package:ploff_kebab/src/presentation/components/loading_widgets/modal_progress_hud.dart';
import 'package:ploff_kebab/src/presentation/pages/main/home/map/widgets/custom_map_button.dart';
import 'package:ploff_kebab/src/presentation/pages/main/home/map/widgets/map_app_bar.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

part 'package:ploff_kebab/src/presentation/pages/main/home/map/mixin/map_mixin.dart';

class MapPage extends StatefulWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage>
    with TickerProviderStateMixin, MapMixin {
  String searchedText = '';

  void _searchedTextFromLatLong(Point point) async {
    final SearchResultWithSession result = YandexSearch.searchByPoint(
      point: point,
      searchOptions: const SearchOptions(),
    );
    final resultSessions = await result.result;
    searchedText = resultSessions.items?.first.name ?? '';
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final address = context.watch<MapBloc>().state.chosenMap;
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
      child: Scaffold(
        body: ModalProgressHUD(
            inAsyncCall: false,
            child: Column(
              children: [
                Expanded(
                  child: Stack(
                    children: [
                      Positioned.fill(
                        // bottom: 300,

                        child: YandexMap(
                          onMapCreated: _onMapCreated,
                          // mapMode: ,
                          rotateGesturesEnabled: false,
                          tiltGesturesEnabled: false,
                          onCameraPositionChanged:
                              (cameraPosition, reason, finished) {
                            if (finished) {
                              _searchedTextFromLatLong(cameraPosition.target);
                              context.read<MapBloc>().add(
                                    MapChosen(
                                        map: MapModel(
                                      addressName: '',
                                      lat: cameraPosition.target.latitude,
                                      long: cameraPosition.target.longitude,
                                    )),
                                  );
                            }
                          },

                          logoAlignment: const MapAlignment(
                            horizontal: HorizontalAlignment.center,
                            vertical: VerticalAlignment.top,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        right: 0,
                        top: 80,
                        child: Text(
                          searchedText,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Align(child: Image.asset(AppImages.mapIcon),),
                      CustomMapButton(
                        onPressed: () async {
                          await LocationRepository.determinePosition()
                              .then(((value) {
                            _moveToPresentLocation(Point(
                              latitude: value.latitude,
                              longitude: value.longitude,
                            ));
                            context.read<MapBloc>().add(
                                  MapChosen(
                                      map: MapModel(
                                    lat: value.latitude,
                                    long: value.longitude,
                                    addressName: '',
                                  )),
                                );
                          }));
                        },
                      ),
                      Positioned(
                        top: 70,
                        left: 10,
                        child: IconButton(
                          splashRadius: 0.1,
                          padding: EdgeInsets.zero,
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Material(
                            color: context.color.white,
                            borderRadius: AppUtils.kBorderRadius12,
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.arrow_back_ios_new_outlined,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                DecoratedBox(
                  decoration: const BoxDecoration(
                    borderRadius: AppUtils.kBorderRadius12,
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: SizedBox(
                      width: 375,
                      height: 404,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Material(
                                borderRadius: AppUtils.kBorderRadius10,
                                color: context.color.anotherGrey,
                              ),
                            ),
                            AppUtils.kGap12,
                            Text(
                              'Адрес доставки',
                              style: context.textStyle.sfProDisplay.copyWith(
                                fontSize: 20,
                              ),
                            )
                          ]),
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}

// (cameraPosition, reason, finished) {
// if (finished) {
// _searchedTextFromLatLong(cameraPosition.target);
// }
// },
