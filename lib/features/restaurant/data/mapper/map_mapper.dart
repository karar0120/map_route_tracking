import 'package:icon_tech_task/core/helper/constances.dart';
import 'package:icon_tech_task/features/restaurant/data/models/map_response.dart';
import 'package:icon_tech_task/features/restaurant/domain/entity/map.dart';
import 'package:icon_tech_task/core/helper/extensions.dart';

extension MapResponseMapper on GetMapResponse? {
  GetMap toDomain() {
    return GetMap(
        routes: (this?.routes?.map((mapResponse) => mapResponse.toDomain()) ??
                const Iterable.empty())
            .cast<MapRoute>()
            .toList());
  }
}

extension RouteResponseMapper on RouteResponse? {
  MapRoute toDomain() {
    return MapRoute(
      legs: (this?.legs?.map((lagsResponse) => lagsResponse.toDomain()) ??
              const Iterable.empty())
          .cast<Leg>()
          .toList(),
      bounds: this!.bounds.toDomain(),
      overviewPolyline: this!.overviewPolyline.toDomain(),
    );
  }
}

extension LegResponseMapper on LegResponse? {
  Leg toDomain() {
    return Leg(
      duration: this!.duration.toDomain(),
      distance: this!.distance.toDomain(),
    );
  }
}

extension DistanceResponseMapper on DistanceResponse? {
  Distance toDomain() {
    return Distance(
      text: this?.text.orEmpty() ?? Constances.empty,
      value: this?.value.orZero() ?? Constances.zero,
    );
  }
}

extension PolylineResponseMapper on PolylineResponse? {
  Polyline toDomain() {
    return Polyline(
      points: this?.points.orEmpty() ?? Constances.empty,
    );
  }
}

extension NortheastResponseMapper on NortheastResponse? {
  Northeast toDomain() {
    return Northeast(
      lat: this?.lat.orZeroPoint() ?? Constances.zeroPoint,
      lng: this?.lng.orZeroPoint() ?? Constances.zeroPoint,
    );
  }
}

extension BoundsResponseMapper on BoundsResponse? {
  Bounds toDomain() {
    return Bounds(
        northeast: this!.northeast.toDomain(),
        southwest: this!.southwest.toDomain());
  }
}
