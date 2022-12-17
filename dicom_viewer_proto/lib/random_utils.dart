import 'dart:typed_data';

import 'package:fpdart/fpdart.dart';
import 'dart:ui' as ui;

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
