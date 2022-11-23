import 'package:dicom_viewer_proto/core/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../infra/studies_fit.dart';

final seriesClientFitProvider = Provider<StudiesClient>((ref) {
  final dio = ref.watch(dioProvider);
  return StudiesClient(dio);
});
