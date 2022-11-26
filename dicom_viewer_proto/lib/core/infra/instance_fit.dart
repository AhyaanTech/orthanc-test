import 'dart:async';

import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';

part 'instance_fit.g.dart';

@RestApi(baseUrl: "http://10.0.2.2:8042")
abstract class InstanceClient {
  factory InstanceClient(Dio dio, {String baseUrl}) = _InstanceClient;

  @GET("/instances/{id}")
  Future<String> getInstanceDetails(@Path("id") String id);

  @GET("/instances/{id}/rendered")
  @Headers(<String, String>{"Accept": "image/jpeg"})
  @DioResponseType(ResponseType.bytes)
  Future<List<int>> getInstanceImageRenderedAsJpeg({
    @Path("id") required String id,
    @Query("quality") required int quality,
    @Query("smooth") bool? smooth,
    @Query("width") int? width,
    @Query("window-center") int? windowCenter,
    @Query("window-width") int? windowWidth,
  });

  // FutureOr<dynamic> serializeTaskList(List<int> objects);

  @GET("/instances/{id}/frames")
  Future<List<int>> getInstanceFramesCount(
    @Path("id") String id,
  );
}
