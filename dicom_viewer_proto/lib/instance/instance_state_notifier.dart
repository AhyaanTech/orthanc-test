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
    ref.watch(imageDataProviderProvider),
    instanceClient: ref.watch(instanceFitClientProvider),
    contrastData: ref.watch(contrastProvider),
  );
});

final imageDataProviderProvider = Provider<List<int>>((ref) {
  return <int>[];
});

class InstanceViewStateNotifier extends StateNotifier<AsyncValue<Uint8List>> {
  final InstanceClient instanceClient;
  final Logger _logger = Logger();
  List<int> imageData;
  final double contrastData;

  InstanceViewStateNotifier(
    this.imageData, {
    required this.contrastData,
    required this.instanceClient,
  }) : super(const AsyncLoading());

  Future<void> getImageAsync({required String instanceId}) async {
    state = const AsyncLoading();
    try {
      imageData = await instanceClient.getInstanceImageRenderedAsJpeg(
          id: instanceId, quality: 90);
      var convertedData = await convertParallel(data: imageData!);
      state = AsyncData(convertedData);
    } catch (e) {
      _logger.e(e);
      state = AsyncError(e, StackTrace.current);
    }
  }

  void changeContrast() {
    _logger.i(imageData.length);
    // try {
    //   imglib.Image? image = imglib.decodeImage(imageData!);
    //   imglib.adjustColor(image!, contrast: contrastData);
    //   Uint8List data = image.getBytes();
    //   state = AsyncData(data);
    // } on Exception catch (e) {
    //   _logger.e("error");
    // }
  }

  Future<Uint8List> convertParallel({required List<int> data}) async {
    return await compute(Uint8List.fromList, data);
  }
}
