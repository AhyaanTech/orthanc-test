import 'package:dicom_viewer_proto/core/logger.dart';
import 'package:dicom_viewer_proto/core/clients.dart';
import 'package:dicom_viewer_proto/study/study_detail/application/study_detail_state_notifiler.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final studyDetailStateNotifierProvider =
    StateNotifierProvider<StudyDetailStateNotifier, AsyncValue>((ref) {
  return StudyDetailStateNotifier(
      ref.watch(studiesFitClientProvider), ref.watch(loggerProvider));
  ;
});
