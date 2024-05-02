import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:icon_tech_task/core/helper/constances.dart';
import 'package:icon_tech_task/core/networking/api_constants.dart';
import 'package:icon_tech_task/features/restaurant/data/models/map_query_params.dart';
import 'package:icon_tech_task/features/restaurant/domain/use_case/get_map.dart';

part 'get_map_state.dart';

class GetMapCubit extends Cubit<GetMapState> {
  GetMapUseCase getMapUseCase;

  GetMapCubit({required this.getMapUseCase}) : super(GetMapInitial());

  final LatLng dataSource = const LatLng(
      29.99169446889467, 31.43208377116414); // San Francisco coordinates
  final LatLng destination = const LatLng(30.339042450500937,
      31.757729373015202); // Example destination coordinates

  GoogleMapController? mapController;
  List<LatLng> routeCoordinates = [];
  String distance = '';
  String duration = '';

  void emitGetMapState() async {
    emit(GetMapLoading());
    final response = await getMapUseCase.execute(MapQueryParams(
        origin: "${dataSource.latitude},${dataSource.longitude}",
        destination: "${destination.latitude},${destination.longitude}",
        key: ApiConstants.apiKey));
    response.when(success: (restaurantBranchesResponse) {
      List<LatLng> decodedPoints = Constances.decodePoly(
          restaurantBranchesResponse.routes[0].overviewPolyline.points);
      routeCoordinates = decodedPoints;
      distance = restaurantBranchesResponse.routes[0].legs[0].distance.text;
      duration = restaurantBranchesResponse.routes[0].legs[0].duration.text;
      if (mapController != null) {
        mapController!.animateCamera(CameraUpdate.newLatLngBounds(
          LatLngBounds(
            southwest: LatLng(
                restaurantBranchesResponse.routes[0].bounds.southwest.lat,
                restaurantBranchesResponse.routes[0].bounds.southwest.lng),
            northeast: LatLng(
                restaurantBranchesResponse.routes[0].bounds.northeast.lat,
                restaurantBranchesResponse.routes[0].bounds.northeast.lng),
          ),
          50, // padding
        ));
      }
      emit(GetMapLoaded());
    }, failure: (error) {
      emit(GetMapError(error: error.apiErrorModel.msg ?? " "));
    });
  }
}
