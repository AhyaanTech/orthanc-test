import 'package:dicom_viewer_proto/study/all_studies/model/study.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'series_fit.g.dart';

@RestApi(baseUrl: "http://localhost:8042")
abstract class SeriesClient {
  factory SeriesClient(Dio dio, {String baseUrl}) = _SeriesClient;

  @GET("/series/{id}")
  Future<List<Study>> getSeriesDetails(
    @Path("id") String id,
    @Query("full") bool full,
  );
}
