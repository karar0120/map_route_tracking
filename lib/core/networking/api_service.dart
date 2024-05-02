import 'package:dio/dio.dart';
import 'package:icon_tech_task/features/restaurant/data/models/map_response.dart';
import 'package:icon_tech_task/features/restaurant/data/models/map_query_params.dart';
import 'package:retrofit/retrofit.dart';
import 'api_constants.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @GET(ApiConstants.map)
  Future<GetMapResponse> getMap(
    @Queries()
    MapQueryParams mapQueryParams,
  );

}
