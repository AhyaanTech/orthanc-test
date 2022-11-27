import 'package:dicom_viewer_proto/study/model/study.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'studies_fit.g.dart';

// @RestApi(baseUrl: "http://10.0.2.2:8042")
@RestApi(baseUrl: "http://localhost:8042")
abstract class StudiesClient {
  factory StudiesClient(Dio dio, {String baseUrl}) = _StudiesClient;

  @GET("/studies")
  Future<List<Study>> getStudies({
    @Query("expand") String? expand,
    @Query("limit") int? limit,
    @Query("since") int? since,
  });

  @GET("/studies/{id}")
  Future<Study> getStudyDetail({
    @Path("id") required String id,
    @Query("full") required bool full,
  });
}
