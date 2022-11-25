import 'package:dicom_viewer_proto/core/infra/series_fit.dart';
import 'package:dicom_viewer_proto/series/models/series.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';

class SeriesDetailPageNotifier extends StateNotifier<AsyncValue<Series>> {
  final SeriesClient seriesClient;
  final Logger logger = Logger();
  SeriesDetailPageNotifier(this.seriesClient) : super(const AsyncLoading());

  Future<void> getSeriesDetails(String seriesId) async {
    var data = await seriesClient.getSeriesDetails(seriesId, false);
    logger.d(data.toJson());
    state = AsyncData(data);
  }
}
