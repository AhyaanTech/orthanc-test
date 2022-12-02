import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image/image.dart';

part 'dicom_windowing.freezed.dart';

@freezed
class DicomWindowing with _$DicomWindowing {
  const DicomWindowing._();
  const factory DicomWindowing({
    /// This window center data comes from the api. if the api doesnt have
    /// it we have to look at VOI and LUT tags/functions and slope and intercepts
    @Default(500) int windowCenter,

    /// same as window center
    @Default(2500) int windowWidth,

    /// the minimum pixel output? as far as ive understood.
    /// defaults to 0
    @Default(0) int yMin,

    /// the maximum pixel output? as far as ive understood.
    /// defaults to 255
    @Default(255) int yMax,

    /// the slope data also comes from the api. we have to multiply the
    /// calculated value with it.
    /// check [multiplySlopeAndIntercept] function
    required Option<int> slope,

    /// the intercept data also comes from the api. we have to add it to
    /// the multiplication of value with slope.
    /// check [multiplySlopeAndIntercept] function
    required Option<int> intercept,
  }) = _DicomWindowing;

  IO<Image> processImageLevelingAndCentering(Image decodedImage) {
    var decodedBytes = decodedImage.getBytes(format: Format.rgba);
    for (var y = 0; y < decodedImage.width; y++) {
      for (var x = 0; x < decodedImage.height; x++) {
        int red = decodedBytes[y * decodedImage.width * 3 + x * 3];
        int green = decodedBytes[y * decodedImage.width * 3 + x * 3 + 1];
        int blue = decodedBytes[y * decodedImage.width * 3 + x * 3 + 2];

        var redProcessed = multiplySlopeAndAddIntercept(red)
            .flatMap((a) => calculateColor(a, windowCenter, windowWidth))
            .run();
        var greenProcessed = multiplySlopeAndAddIntercept(green)
            .flatMap((a) => calculateColor(a, windowCenter, windowWidth))
            .run();
        var blueProcessed = multiplySlopeAndAddIntercept(blue)
            .flatMap((a) => calculateColor(a, windowCenter, windowWidth))
            .run();

        decodedImage.setPixelRgba(
            x, y, redProcessed, greenProcessed, blueProcessed);
      }
    }
    return IO.of(decodedImage);
  }

  double get wMin {
    return (windowCenter - 0.5 - (windowWidth - 1) / 2);
  }

  double get wMax {
    var wMax = windowCenter - 0.5 + (windowWidth - 1) / 2;
    return wMax;
  }

  IO<int> multiplySlopeAndAddIntercept(int imageByte) {
    // return IO.of(
    // (slope.getOrElse(() => 0) * imageByte) + intercept.getOrElse(() => 0));
    return IO.of(imageByte);
  }

  IO<int> calculateColor(int c, int winCenter, int winWidth) {
    if (c <= wMin) {
      return IO.of(0);
    } else if (c > wMax) {
      return IO.of(255);
    } else {
      return IO
          .of((((c - (winCenter - 0.5)) / (winWidth - 1) + 0.5) * 255).toInt());
    }
  }
}
