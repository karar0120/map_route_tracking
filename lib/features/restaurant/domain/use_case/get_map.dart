import 'package:icon_tech_task/core/helper/base_use_case.dart';
import 'package:icon_tech_task/core/networking/api_result.dart';
import 'package:icon_tech_task/features/restaurant/data/models/map_query_params.dart';
import 'package:icon_tech_task/features/restaurant/domain/entity/map.dart';
import 'package:icon_tech_task/features/restaurant/domain/repository/restaurant_repo.dart';

class GetMapUseCase extends BaseUseCase<MapQueryParams,
    GetMap> {
  MapRepository mapRepository;

  GetMapUseCase({required this.mapRepository});
  @override
  Future<ApiResult<GetMap>> execute(
      MapQueryParams input) async {
    return await mapRepository.getMap(input);
  }
}
