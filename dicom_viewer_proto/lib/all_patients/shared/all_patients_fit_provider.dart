import 'package:dicom_viewer_proto/all_patients/infra/all_patients_fit.dart';
import 'package:dicom_viewer_proto/all_patients/model/patient_list.dart';
import 'package:dicom_viewer_proto/core/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final allPatientsFitProvider = Provider<RestClient>((ref) {
  final dio = ref.watch(dioProvider);
  return RestClient(dio);
});
