import 'package:icon_tech_task/core/networking/api_result.dart';
import 'package:icon_tech_task/features/map/data/models/map_query_params.dart';
import 'package:icon_tech_task/features/map/domain/entity/map.dart';

abstract class MapRepository {
  Future<ApiResult<GetMap>> getMap(MapQueryParams mapQueryParams);
}
