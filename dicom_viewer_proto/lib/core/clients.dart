import 'package:dicom_viewer_proto/core/dio.dart';
import 'package:dicom_viewer_proto/core/infra/series_fit.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'infra/studies_fit.dart';

final studiesFitClientProvider = Provider<StudiesClient>((ref) {
  final dio = ref.watch(dioProvider);
  return StudiesClient(dio);
});

final seriesFitClientProvider = Provider<SeriesClient>((ref) {
  final dio = ref.watch(dioProvider);
  return SeriesClient(dio);
});
