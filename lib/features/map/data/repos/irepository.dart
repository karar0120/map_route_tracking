import 'package:icon_tech_task/core/helper/shared_preferences.dart';
import 'package:icon_tech_task/core/networking/api_error_handler.dart';
import 'package:icon_tech_task/core/networking/api_result.dart';
import 'package:icon_tech_task/core/networking/api_service.dart';
import 'package:icon_tech_task/core/networking/netwotk_info.dart';
import 'package:icon_tech_task/features/map/data/mapper/map_mapper.dart';
import 'package:icon_tech_task/features/map/data/models/map_query_params.dart';
import 'package:icon_tech_task/features/map/domain/entity/map.dart';
import 'package:icon_tech_task/features/map/domain/repository/restaurant_repo.dart';

class MapRepo implements MapRepository {
  final ApiService _apiService;
  final AppPreferences _appPreferences;
  final NetworkInfo _networkInfo;

  MapRepo(
    this._apiService,
    this._appPreferences,
    this._networkInfo,
  );

  @override
  Future<ApiResult<GetMap>> getMap(MapQueryParams mapQueryParams) async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _apiService.getMap(mapQueryParams);
        return ApiResult.success(response.toDomain());
      } catch (error) {
        return ApiResult.failure(ErrorHandler.handle(error));
      }
    } else {
      return ApiResult.failure(
          ErrorHandler.handle(DataSource.INTERNAL_SERVER_ERROR.getFailure()));
    }
  }
}
