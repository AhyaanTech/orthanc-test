import 'package:dicom_viewer_proto/core/clients.dart';
import 'package:dicom_viewer_proto/core/infra/instance_fit.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';

final instanceViewStateNotifierProvider =
    StateNotifierProvider<InstanceViewStateNotifier, AsyncValue<Uint8List>>(
        (ref) {
  return InstanceViewStateNotifier(
      instanceClient: ref.watch(instanceFitClientProvider));
});

class InstanceViewStateNotifier extends StateNotifier<AsyncValue<Uint8List>> {
  final InstanceClient instanceClient;
  final Logger _logger = Logger();
  late List<int> imageData;

  InstanceViewStateNotifier({
    required this.instanceClient,
  }) : super(const AsyncLoading());

  Future<void> getImageAsync({required String instanceId}) async {
    state = const AsyncLoading();
    imageData = await instanceClient.getInstanceImageRenderedAsJpeg(
        id: instanceId, quality: 90);
    try {
      _logger.i(imageData);
      var convertedData = await convertParallel(data: imageData);
      state = AsyncData(convertedData);
    } catch (e) {
      _logger.e(e);
      state = AsyncError(e, StackTrace.current);
    }
  }

  Future<Uint8List> convertParallel({required List<int> data}) async {
    return await compute(Uint8List.fromList, data);
  }

  Uint8List convert({required List<int> data}) {
    return Uint8List.fromList(data);
  }
}
