import 'package:dicom_viewer_proto/series/models/series.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'instance_fit.g.dart';

@RestApi(baseUrl: "http://localhost:8042")
abstract class InstanceClient {
  factory InstanceClient(Dio dio, {String baseUrl}) = _InstanceClient;

  @GET("/instance/{id}")
  Future<Series> getInstanceDetails(
    @Path("id") String id,
    @Query("full") bool full,
  );
}
