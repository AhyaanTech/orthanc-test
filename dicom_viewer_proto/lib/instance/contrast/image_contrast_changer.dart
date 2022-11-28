import 'package:another_xlider/another_xlider.dart';
import 'package:dicom_viewer_proto/instance/instance_state_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ImageContrastChanger extends ConsumerWidget {
  const ImageContrastChanger({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
        child: ref
            .watch(instanceViewStateNotifierProvider)
            .whenData((value) => Column(
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          ref
                              .read(contrastProvider.notifier)
                              .update((state) => state + 0.1);
                          ref
                              .read(instanceViewStateNotifierProvider.notifier)
                              .changeContrast();
                        },
                        child: Text("+")),
                    Divider(),
                    ElevatedButton(
                        onPressed: () {
                          ref
                              .read(contrastProvider.notifier)
                              .update((state) => state - 0.1);
                          ref
                              .read(instanceViewStateNotifierProvider.notifier)
                              .changeContrast();
                        },
                        child: Text("-"))
                  ],
                ))
            .value);
  }
}

class ContrastChangerWidget extends ConsumerWidget {
  const ContrastChangerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      width: 300,
      height: 500,
      child: FlutterSlider(
        axis: Axis.vertical,
        values: const [100],
        min: 50,
        max: 150,
        trackBar: FlutterSliderTrackBar(
          centralWidget: Container(
            decoration: BoxDecoration(
                color: Colors.green, borderRadius: BorderRadius.circular(50)),
            width: 9,
            height: 9,
          ),
          inactiveTrackBar: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.black12,
            border: Border.all(width: 3, color: Colors.blue),
          ),
          activeTrackBar: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: Colors.blue.withOpacity(0.5)),
        ),
        onDragging: (handlerIndex, lowerValue, upperValue) {
          ref.read(contrastProvider.notifier).state = lowerValue;
          ref.read(instanceViewStateNotifierProvider.notifier).changeContrast();
        },
      ),
    );
  }
}

final contrastProvider = StateProvider<double>((ref) {
  return 1.0;
});
