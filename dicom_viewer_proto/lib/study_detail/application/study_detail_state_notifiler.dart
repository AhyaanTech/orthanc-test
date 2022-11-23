import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../all_studies/model/study.dart';
import '../../core/infra/studies_fit.dart';

class StudyDetailStateNotifier extends StateNotifier<AsyncValue<Study>> {
  final StudiesClient client;
  StudyDetailStateNotifier(this.client) : super(const AsyncLoading());

  Future<void> getStudyDetail(String id) async {
    Study studyDetail = await client.getStudyDetail(id, true);
    state = AsyncData(studyDetail);
  }
}
