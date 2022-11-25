import 'package:dicom_viewer_proto/core/studies_fit_client.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../model/study.dart';
import '../application/all_studies_list_notifier.dart';

final allStudiesStateNotifierProvider =
    StateNotifierProvider<AllStudiesListStateNotifier, AsyncValue<List<Study>>>(
        (ref) {
  return AllStudiesListStateNotifier(ref.watch(studiesFitClientProvider));
});
