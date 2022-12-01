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

  void processImageLevelingAndCentering(Image decodedImage) {
    var decodedBytes = decodedImage.getBytes(format: Format.rgba);
    for (var y = 0; y < decodedImage.width; y++) {
      for (var x = 0; x < decodedImage.height; x++) {
        int red = decodedBytes[y * decodedImage.width * 3 + x * 3];
        int green = decodedBytes[y * decodedImage.width * 3 + x * 3 + 1];
        int blue = decodedBytes[y * decodedImage.width * 3 + x * 3 + 2];
      }
    }
  }

  double get wMin {
    return (windowCenter - 0.5 - (windowWidth - 1) / 2);
  }

  double get wMax {
    var wMax = windowCenter - 0.5 + (windowWidth - 1) / 2;
    return wMax;
  }

  int multiplySlopeAndAddIntercept(int imageByte, int slope, int intercept) {
    return imageByte * slope + intercept;
  }

  int calculateColor(int c, double winCenter, double winWidth) {
    if (c <= wMin) {
      return 0;
    } else if (c > wMax) {
      return 255;
    } else {
      return (((c - (winCenter - 0.5)) / (winWidth - 1) + 0.5) * 255).toInt();
    }
  }
}
