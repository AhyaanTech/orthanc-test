import 'package:dicom_viewer_proto/all_patients/model/patient_list.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'all_patients_fit.g.dart';

@RestApi(baseUrl: "http://localhost:8042")
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET("/patients")
  Future<List<String>> getPatients();

  // @GET("/patients/{id}")
  // Future<Patient> getPatientById();
}
