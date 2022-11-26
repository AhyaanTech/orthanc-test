import 'package:dicom_viewer_proto/core/infra/studies_fit.dart';
import 'package:dicom_viewer_proto/study/model/study.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';

class StudyDetailStateNotifier extends StateNotifier<AsyncValue<Study>> {
  final StudiesClient client;
  final Logger logger;
  StudyDetailStateNotifier(this.client, this.logger)
      : super(const AsyncLoading());

  Future<void> getStudyDetail(String id) async {
    Study studyDetail = await client.getStudyDetail(id: id, full: true);
    logger.i(studyDetail.toJson());
    state = AsyncData(studyDetail);
  }
}
