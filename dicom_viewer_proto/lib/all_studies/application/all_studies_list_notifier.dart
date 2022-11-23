import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../infra/studies_fit.dart';
import '../model/all_studies_response.dart';

class AllStudiesListStateNotifier
    extends StateNotifier<AsyncValue<List<AllStudiesResponse>>> {
  final StudiesClient client;
  AllStudiesListStateNotifier(this.client) : super(const AsyncLoading());

  Future<void> getPatients() async {
    var list = await client.getStudies("expand", 10, 0);

    state = AsyncData(list);
  }
}
