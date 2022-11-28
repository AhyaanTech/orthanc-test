import 'package:dicom_viewer_proto/core/clients.dart';
import 'package:dicom_viewer_proto/core/infra/instance_fit.dart';
import 'package:dicom_viewer_proto/instance/contrast/image_contrast_changer.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:image/image.dart' as imglib;

final instanceViewStateNotifierProvider =
    StateNotifierProvider<InstanceViewStateNotifier, AsyncValue<Uint8List>>(
        (ref) {
  return InstanceViewStateNotifier(
    ref,
    instanceClient: ref.watch(instanceFitClientProvider),
  );
});

class InstanceViewStateNotifier extends StateNotifier<AsyncValue<Uint8List>> {
  final InstanceClient instanceClient;
  final Logger _logger = Logger();
  late Uint8List imageData;
  late List<int> rawImageData;

  final Ref ref;

  InstanceViewStateNotifier(
    this.ref, {
    required this.instanceClient,
  }) : super(const AsyncLoading());

  Future<void> getImageAsync({required String instanceId}) async {
    state = const AsyncLoading();
    try {
      rawImageData = await instanceClient.getInstanceImageRenderedAsJpeg(
          id: instanceId, quality: 90);
      imageData = await convertParallel(data: rawImageData);
      state = AsyncData(imageData);
    } catch (e) {
      _logger.e(e);
      state = AsyncError(e, StackTrace.current);
    }
  }

  void changeContrast() async {
    try {
      _logger.i("decoding image");
      imglib.Image? image = imglib.decodeImage(rawImageData);

      imglib.adjustColor(image!, contrast: ref.read(contrastProvider));
      var processedRawImageData = imglib.encodeJpg(image);
      imageData = await convertParallel(data: processedRawImageData);
      state = AsyncData(imageData);
    } on Exception catch (e) {
      _logger.e("error");
    }
  }

  Future<Uint8List> convertParallel({required List<int> data}) {
    return compute(Uint8List.fromList, data);
  }
}
