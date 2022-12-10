import 'dart:io';

import 'package:dicom_viewer_proto/bridge_definitions.dart';
import 'package:dicom_viewer_proto/core/clients.dart';
import 'package:dicom_viewer_proto/core/dio.dart';
import 'package:dicom_viewer_proto/core/infra/instance_fit.dart';
import 'package:dicom_viewer_proto/ffi.dart';
import 'package:dicom_viewer_proto/instance/application/instance_view_state.dart';
import 'package:dicom_viewer_proto/instance/contrast/image_contrast_changer.dart';
import 'package:dicom_viewer_proto/instance/model/dicom_windowing.dart';
import 'package:dicom_viewer_proto/instance/model/instance_details_dto.dart';
import 'package:dicom_viewer_proto/instance/windower/window_center_changer.dart';
import 'package:dicom_viewer_proto/instance/windower/window_width_changer.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:logger/logger.dart';
import 'package:image/image.dart' as imglib;
import 'dart:ui' as ui;

final instanceViewStateNotifierProvider =
    StateNotifierProvider<InstanceViewStateNotifier, InstanceViewState>((ref) {
  return InstanceViewStateNotifier(ref,
      instanceClient: ref.watch(instanceFitClientProvider),
      api: ref.watch(nativeApiProvider),
      dio: ref.watch(dioProvider));
});

class InstanceViewStateNotifier extends StateNotifier<InstanceViewState> {
  final InstanceClient instanceClient;
  final Logger _logger = Logger();
  Uint8List imageData = Uint8List.fromList([]);
  List<int> rawImageData = List<int>.filled(1, 0, growable: true);
  late InstanceDetailsDto instanceDetails;
  late DicomWindowing dicomWindowing;
  final Native api;
  final Dio dio;

  final Ref ref;

  InstanceViewStateNotifier(
    this.ref, {
    required this.dio,
    required this.api,
    required this.instanceClient,
  }) : super(const InstanceViewState.fetching());

  Future<Unit> getInstanceDetails({required String instanceId}) async {
    state = const InstanceViewState.fetching();

    instanceDetails = await instanceClient.getInstanceDetails(instanceId);
    _logger.i(instanceDetails.instanceMainDicomTags.toJson());
    var windowCenterParsed = int.parse(
      instanceDetails.instanceMainDicomTags.windowCenter.getOrElse(() => "500"),
    );
    var windowWidthParsed = int.parse(
      instanceDetails.instanceMainDicomTags.windowWidth.getOrElse(() => "2500"),
    );
    ref
        .read(windowCenterProvider.notifier)
        .update((state) => state = windowCenterParsed);
    ref
        .read(windowWidthProvider.notifier)
        .update((state) => state = windowWidthParsed);
    dicomWindowing = DicomWindowing(
      intercept: some(
        int.parse(
          instanceDetails.instanceMainDicomTags.rescaleIntercept
              .getOrElse(() => "0"),
        ),
      ),
      slope: some(
        int.parse(
          instanceDetails.instanceMainDicomTags.rescaleSlope
              .getOrElse(() => "0"),
        ),
      ),
      windowCenter: windowCenterParsed,
      windowWidth: windowWidthParsed,
    );

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

  Future<void> changeWindowing() async {
    dicomWindowing =
        dicomWindowing.copyWith(windowCenter: ref.read(windowCenterProvider));
    dicomWindowing =
        dicomWindowing.copyWith(windowWidth: ref.read(windowWidthProvider));
    Uint8List windowedProcessedImage = await dicomWindowing
        .processImageLevelingAndCentering(imglib.decodeJpg(rawImageData)!)
        .flatMapTask((a) => convertParallelTask(data: imglib.encodeJpg(a)))
        .run();
    state.whenOrNull(
        rendered: (instanceState) => state = InstanceViewState.rendered(
            instanceState.copyWith(imageData: windowedProcessedImage)));
  }

  Task<Uint8List> convertParallelTask({required List<int> data}) {
    return Task(() async => await compute(Uint8List.fromList, data));
  }

  Future<Uint8List> convertParallel({required List<int> data}) {
    return compute(Uint8List.fromList, data);
  }

  Future<void> downloadDicom() async {
    var nativeResponse = await api.setDcmData();

    print(nativeResponse.length);
    // var processNativeResponse = await imgImageToUiImage(nativeResponse).run();
    state.whenOrNull(
        rendered: (instanceState) => state = InstanceViewState.rendered(
            instanceState.copyWith(imageData: nativeResponse)));
  }

  Task<ui.Image> imgImageToUiImage(Uint8List image) => Task(() async {
        {
          ui.ImmutableBuffer buffer =
              await ui.ImmutableBuffer.fromUint8List(image);
          ui.ImageDescriptor id = ui.ImageDescriptor.raw(buffer,
              height: 900, width: 300, pixelFormat: ui.PixelFormat.rgba8888);
          ui.Codec codec =
              await id.instantiateCodec(targetHeight: 900, targetWidth: 300);
          ui.FrameInfo fi = await codec.getNextFrame();
          ui.Image uiImage = fi.image;
          return uiImage;
        }
      });
}
