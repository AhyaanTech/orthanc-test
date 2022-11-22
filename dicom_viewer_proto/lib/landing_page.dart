import 'package:dicom_viewer_proto/all_patients/view/patient_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LandingPage extends ConsumerStatefulWidget {
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LandingPageState();
}

class _LandingPageState extends ConsumerState<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Center(child: ListView.builder(itemBuilder: ((context, index) {
        return PatientListItem(patientUUID: index.toString());
      }))),
    ));
  }
}
