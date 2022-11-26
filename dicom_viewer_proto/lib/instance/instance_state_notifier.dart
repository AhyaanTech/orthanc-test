import 'package:dicom_viewer_proto/core/clients.dart';
import 'package:dicom_viewer_proto/core/infra/instance_fit.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';

final instanceViewStateNotifierProvider =
    StateNotifierProvider<InstanceViewStateNotifier, AsyncValue<List<int>>>(
        (ref) {
  return InstanceViewStateNotifier(
      instanceClient: ref.watch(instanceFitClientProvider));
});

class InstanceViewStateNotifier extends StateNotifier<AsyncValue<List<int>>> {
  final InstanceClient instanceClient;
  final Logger _logger = Logger();

  InstanceViewStateNotifier({
    required this.instanceClient,
  }) : super(const AsyncLoading());

  Future<void> getImageAsync({required String instanceId}) async {
    // var data = await instanceClient.getInstanceImageRenderedAsJpeg(
    //     id: instanceId, quality: 90);
    // _logger.i(data);
    try {
      var data = await instanceClient.getInstanceImageRenderedAsJpeg(
          id: instanceId, quality: 90);
      _logger.i(data);
      state = AsyncData(data);
    } catch (e) {
      _logger.e(e);
      state = AsyncError(e, StackTrace.current);
    }
  }
}
