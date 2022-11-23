import 'package:dicom_viewer_proto/core/studies_fit_client.dart';
import 'package:dicom_viewer_proto/study_detail/application/study_detail_state_notifiler.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final studyDetialStateNotifierProvider =
    StateNotifierProvider<StudyDetailStateNotifier, AsyncValue>((ref) {
  return StudyDetailStateNotifier(ref.watch(studiesFitClientProvider));
  ;
});
