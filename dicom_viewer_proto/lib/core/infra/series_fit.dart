import 'package:dicom_viewer_proto/series/models/series.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'series_fit.g.dart';

@RestApi(baseUrl: "http://localhost:8042")
abstract class SeriesClient {
  factory SeriesClient(Dio dio, {String baseUrl}) = _SeriesClient;

  @GET("/series/{id}")
  Future<Series> getSeriesDetails(
    @Path("id") String id,
    @Query("full") bool full,
  );
}
