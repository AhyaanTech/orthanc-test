import 'package:dicom_viewer_proto/core/clients.dart';
import 'package:dicom_viewer_proto/series/application/series_detail_page_notifier.dart';
import 'package:dicom_viewer_proto/series/models/series.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final seriesDetailPageStateNotifierProvider =
    StateNotifierProvider<SeriesDetailPageNotifier, AsyncValue<Series>>((ref) {
  return SeriesDetailPageNotifier(ref.watch(seriesFitClientProvider));
});
