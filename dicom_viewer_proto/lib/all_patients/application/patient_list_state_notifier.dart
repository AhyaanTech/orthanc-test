import 'package:dicom_viewer_proto/all_patients/infra/all_patients_fit.dart';
import 'package:dicom_viewer_proto/all_patients/model/patient_list.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PatientListStateNotifier
    extends StateNotifier<AsyncValue<List<PatientsList>>> {
  final RestClient client;
  PatientListStateNotifier(this.client) : super(const AsyncLoading());

  Future<void> getPatients() async {
    List<String> list = await client.getPatients();
    var data = list.map((element) => PatientsList.fromString(element)).toList();
    state = AsyncData(data);
  }
}
