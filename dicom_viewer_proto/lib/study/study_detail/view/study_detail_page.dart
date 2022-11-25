import 'package:dicom_viewer_proto/study/study_detail/shared/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../model/study.dart';

class StudyDetailPage extends ConsumerStatefulWidget {
  final Study study;

  const StudyDetailPage(this.study, {super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _StudyDetailPageState();
}

class _StudyDetailPageState extends ConsumerState<StudyDetailPage> {
  @override
  void initState() {
    ref
        .read(studyDetailStateNotifierProvider.notifier)
        .getStudyDetail(super.widget.study.id);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(),
      body: ref.watch(studyDetailStateNotifierProvider).when(
        data: (data) {
          return ShowStudyDetailCard(
            study: data,
          );
        },
        error: (error, trace) {
          return const Text("Something Went Wrong");
        },
        loading: () {
          return const CircularProgressIndicator();
        },
      ),
    ));
  }
}

class ShowStudyDetailCard extends StatelessWidget {
  const ShowStudyDetailCard({
    Key? key,
    required this.study,
  }) : super(key: key);
  final Study study;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FractionallySizedBox(
        heightFactor: 0.75,
        widthFactor: 0.79,
        child: Card(
          child: IntrinsicHeight(
            child: Column(
              children: [
                IntrinsicHeight(
                  child: Row(
                    children: [
                      const Text("Study ID"),
                      // ignore: sized_box_for_whitespace
                      Container(
                        height: 10,
                        child: const VerticalDivider(
                          thickness: 10,
                          color: Colors.black,
                          endIndent: 2,
                          indent: 5,
                        ),
                      ),
                      Text(study.id),
                    ],
                  ),
                ),
                Text(study.patientMainDicomTags.patientID.toString())
              ],
            ),
          ),
        ),
      ),
    );
  }
}
