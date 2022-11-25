import 'package:dicom_viewer_proto/core/infra/studies_fit.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../model/study.dart';

class AllStudiesListStateNotifier
    extends StateNotifier<AsyncValue<List<Study>>> {
  final StudiesClient client;
  AllStudiesListStateNotifier(this.client) : super(const AsyncLoading());

  Future<void> getAllStudies() async {
    var list = await client.getStudies("expand", 10, 0);

    state = AsyncData(list);
  }
}
