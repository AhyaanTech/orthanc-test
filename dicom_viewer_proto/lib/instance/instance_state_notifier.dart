import 'package:dicom_viewer_proto/core/clients.dart';
import 'package:dicom_viewer_proto/core/infra/instance_fit.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final instanceViewStateNotifierProvider =
    StateNotifierProvider<InstanceViewStateNotifier, AsyncValue>((ref) {
  return InstanceViewStateNotifier(
      instanceClient: ref.watch(instanceFitClientProvider));
});

class InstanceViewStateNotifier extends StateNotifier<AsyncValue> {
  final InstanceClient instanceClient;

  InstanceViewStateNotifier({
    required this.instanceClient,
  }) : super(const AsyncLoading());

  Future<void> getImageAsync({required String instanceId}) async {
    instanceClient.getInstanceImageRenderedAsJpeg(id: instanceId, quality: 90);
  }
}
