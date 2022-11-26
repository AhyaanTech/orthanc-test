import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';

part 'instance_fit.g.dart';

@RestApi(baseUrl: "http://localhost:8042")
abstract class InstanceClient {
  factory InstanceClient(Dio dio, {String baseUrl}) = _InstanceClient;

  @GET("/instance/{id}")
  Future<String> getInstanceDetails(@Path("id") String id);

  @GET("/instance/{id}")
  @Headers(<String, String>{"Content-Type": "image/jpeg"})
  @DioResponseType(ResponseType.bytes)
  Future<List<int>> getInstanceImageAsJpeg(
    @Path("id") String id,
    @Query("quality") int quality,
  );

  @GET("/instance/{id}/rendered")
  @Headers(<String, String>{"Content-Type": "image/jpeg"})
  @DioResponseType(ResponseType.bytes)
  Future<List<int>> getInstanceImageRenderedAsJpeg({
    @Path("id") required String id,
    @Query("quality") required int quality,
    @Query("smooth") bool? smooth,
    @Query("width") int? width,
    @Query("window-center") int? windowCenter,
    @Query("window-width") int? windowWidth,
  });

  @GET("/instance/{id}/frames")
  Future<List<int>> getInstanceFramesCount(
    @Path("id") String id,
  );
}
