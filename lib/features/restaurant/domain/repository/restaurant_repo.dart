import 'package:icon_tech_task/core/networking/api_result.dart';
import 'package:icon_tech_task/features/restaurant/data/models/map_query_params.dart';
import 'package:icon_tech_task/features/restaurant/domain/entity/map.dart';

abstract class MapRepository {
  Future<ApiResult<GetMap>> getMap(MapQueryParams mapQueryParams);
}
