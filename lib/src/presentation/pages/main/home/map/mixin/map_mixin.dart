part of 'package:ploff_kebab/src/presentation/pages/main/home/map/map_page.dart';


mixin MapMixin on State<MapPage> {
  // late final TextEditingController nameStreetController ;
  // late final TextEditingController enterenceController;
  // late final TextEditingController floorController;
  // late final TextEditingController apartmentController;
  // late final TextEditingController referencePointController;
  // late final TextEditingController addressNameController;
  //
  // @override
  // void initState(){
  //   super.initState();
  //   nameStreetController = TextEditingController();
  //   enterenceController = TextEditingController();
  //   floorController = TextEditingController();
  //   apartmentController = TextEditingController();
  //   referencePointController = TextEditingController();
  //   addressNameController = TextEditingController();
  // }
  //
  // @override
  // void dispose(){
  //   nameStreetController.dispose();
  //   enterenceController.dispose();
  //   floorController.dispose();
  //   floorController.dispose();
  //   apartmentController.dispose();
  //   referencePointController.dispose();
  //   addressNameController.dispose();
  // }

  Future<void> _moveToPresentLocation(Point point) async {
    await (await _completer.future).moveCamera(
      animation: const MapAnimation(type: MapAnimationType.linear,
      duration: 1),
      CameraUpdate.newCameraPosition(
        CameraPosition(
        target: point,
        zoom: 13,
        ),
      ),
    );
  }
  final _completer = Completer<YandexMapController>();

  Future<void> _onMapCreated(YandexMapController controller) async {
    _completer.complete(controller);
    await LocationRepository.determinePosition()
    .then((value) => controller.moveCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(target: Point(
          latitude: value.latitude,
          longitude: value.longitude,
        ),
          zoom: 12,
        )
      ),
      animation: const MapAnimation(
        type: MapAnimationType.linear, duration: 1
      )
    ),

    );
  }
  Future<void> _zoomIn() async {
    final YandexMapController controller = await _completer.future;
    await controller.moveCamera(CameraUpdate.zoomIn(),
    animation: const MapAnimation(duration: 1));
  }

  Future<void> _zoomOut() async {
    final YandexMapController controller = await _completer.future;
    await controller.moveCamera(CameraUpdate.zoomOut(),
    animation: const MapAnimation(duration: 1),
    );
  }
}