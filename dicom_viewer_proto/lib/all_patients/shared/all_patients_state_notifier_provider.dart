import 'package:dicom_viewer_proto/all_patients/application/patient_list_state_notifier.dart';
import 'package:dicom_viewer_proto/all_patients/model/patient_list.dart';
import 'package:dicom_viewer_proto/all_patients/shared/all_patients_fit_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:retrofit/dio.dart';

final allPatientsStateNotifierProvider = StateNotifierProvider<
    PatientListStateNotifier, AsyncValue<List<PatientsList>>>((ref) {
  return PatientListStateNotifier(ref.watch(allPatientsFitProvider));
});
