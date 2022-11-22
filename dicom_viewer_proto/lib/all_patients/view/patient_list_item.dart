import 'package:dicom_viewer_proto/all_patients/model/patient_list.dart';
import 'package:dicom_viewer_proto/core/app_widget.dart';
import 'package:dicom_viewer_proto/core/routes/app_router.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PatientListItem extends ConsumerWidget {
  final PatientsList patientItem;
  const PatientListItem({
    Key? key,
    required this.patientItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListTile(
        leading: Text(patientItem.patientUUID),
        onTap: () => {
              ref
                  .read(appRouterProvider)
                  .popAndPush(PatientDetailRoute(patientList: patientItem))
            });
  }
}
