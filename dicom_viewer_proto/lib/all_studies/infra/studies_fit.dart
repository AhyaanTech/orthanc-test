import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

import '../model/all_studies_response.dart';

part 'studies_fit.g.dart';

@RestApi(baseUrl: "http://localhost:8042")
abstract class StudiesClient {
  factory StudiesClient(Dio dio, {String baseUrl}) = _StudiesClient;

  @GET("/studies")
  Future<List<AllStudiesResponse>> getStudies(
    @Query("expand") String? expand,
    @Query("limit") int? limit,
    @Query("since") int? since,
  );
}
