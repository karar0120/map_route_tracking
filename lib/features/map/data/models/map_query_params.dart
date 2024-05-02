import 'package:freezed_annotation/freezed_annotation.dart';
part 'map_query_params.g.dart';

@JsonSerializable()
class MapQueryParams {
  final String origin;
  final String destination;
  final String key;
  MapQueryParams({
    required this.origin,
    required this.destination,
    required this.key,
  });

  Map<String, dynamic> toJson() =>
      _$MapQueryParamsToJson(this);
}
