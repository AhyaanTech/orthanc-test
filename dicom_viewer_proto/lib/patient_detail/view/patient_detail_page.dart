import 'package:dicom_viewer_proto/all_patients/model/patient_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PatientDetailPage extends ConsumerWidget {
  final PatientsList patientList;
  const PatientDetailPage(this.patientList, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
        child: Scaffold(
      body: Center(child: Text(patientList.patientUUID)),
    ));
  }
}
