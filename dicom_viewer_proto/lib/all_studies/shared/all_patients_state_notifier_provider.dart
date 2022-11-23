import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../application/all_studies_list_notifier.dart';
import '../model/all_studies_response.dart';
import 'all_patients_fit_provider.dart';

final allStudiesStateNotifierProvider = StateNotifierProvider<
    AllStudiesListStateNotifier, AsyncValue<List<AllStudiesResponse>>>((ref) {
  return AllStudiesListStateNotifier(ref.watch(seriesClientFitProvider));
});
