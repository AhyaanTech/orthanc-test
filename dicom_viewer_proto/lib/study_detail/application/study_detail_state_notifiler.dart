import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/infra/studies_fit.dart';

class StudyDetailStateNotifier extends StateNotifier<AsyncValue> {
  final StudiesClient client;
  StudyDetailStateNotifier(this.client) : super(const AsyncLoading());

  Future<void> getStudyDetail(String id) async {
    var studyDetail = client.getStudyDetail(id, true);
    print(studyDetail);
  }
}
