import 'package:dicom_viewer_proto/all_studies/model/all_studies_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class StudyDetailPage extends ConsumerWidget {
  final Study study;
  const StudyDetailPage(this.study, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(),
      body: Center(child: Text(study.id)),
    ));
  }
}
