import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class PatientListItem extends StatelessWidget {
  final String patientUUID;
  const PatientListItem({
    Key? key,
    required this.patientUUID,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(patientUUID);
  }
}
