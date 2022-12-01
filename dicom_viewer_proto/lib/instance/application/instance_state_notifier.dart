import 'package:dicom_viewer_proto/core/clients.dart';
import 'package:dicom_viewer_proto/core/infra/instance_fit.dart';
import 'package:dicom_viewer_proto/instance/application/instance_view_state.dart';
import 'package:dicom_viewer_proto/instance/contrast/image_contrast_changer.dart';
import 'package:dicom_viewer_proto/instance/model/instance_details_dto.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:logger/logger.dart';
import 'package:image/image.dart' as imglib;

final instanceViewStateNotifierProvider =
    StateNotifierProvider<InstanceViewStateNotifier, InstanceViewState>((ref) {
  return InstanceViewStateNotifier(
    ref,
    instanceClient: ref.watch(instanceFitClientProvider),
  );
});

class InstanceViewStateNotifier extends StateNotifier<InstanceViewState> {
  final InstanceClient instanceClient;
  final Logger _logger = Logger();
  Uint8List imageData = Uint8List.fromList([]);
  List<int> rawImageData = List<int>.filled(1, 0, growable: true);
  late InstanceDetailsDto instanceDetails;

  final Ref ref;

  InstanceViewStateNotifier(
    this.ref, {
    required this.instanceClient,
  }) : super(const InstanceViewState.fetching());

  Future<Unit> getInstanceDetails({required String instanceId}) async {
    state = const InstanceViewState.fetching();

    instanceDetails = await instanceClient.getInstanceDetails(instanceId);

    state = InstanceViewState.rendered(InstanceViewStateData(
        imageData: imageData,
        tags: instanceDetails.instanceMainDicomTags.toDomain()));

    return unit;
  }

  Future<void> getImageAsync({required String instanceId}) async {
    _logger.i(instanceId);
    try {
      rawImageData = await instanceClient.getInstanceImageRenderedAsJpeg(
          id: instanceId, quality: 90);
    } catch (e) {
      _logger.e(e);
      state = InstanceViewState.error(e.toString());
    }
    imageData = await convertParallel(data: rawImageData);
    state.maybeWhen(
      orElse: () {},
      rendered: (value) {
        state =
            InstanceViewState.rendered(value.copyWith(imageData: imageData));
      },
    );
  }

  void changeContrast() async {
    state.maybeWhen(
      orElse: () {},
      rendered: (value) {
        state =
            InstanceViewState.rendered(value.copyWith(imageData: imageData));
      },
    );
    try {
      _logger.i("decoding image");
      imglib.Image? image = imglib.decodeImage(rawImageData);

      imglib.adjustColor(image!, contrast: ref.read(contrastProvider));
      var processedRawImageData = imglib.encodeJpg(image);
      imageData = await convertParallel(data: processedRawImageData);
      state.maybeWhen(
        orElse: () {},
        rendered: (value) {
          state =
              InstanceViewState.rendered(value.copyWith(imageData: imageData));
        },
      );
    } on Exception catch (e) {
      _logger.e(e.toString());
    }
  }

  Future<Uint8List> convertParallel({required List<int> data}) {
    return compute(Uint8List.fromList, data);
  }
}
