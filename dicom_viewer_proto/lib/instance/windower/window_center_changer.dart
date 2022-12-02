import 'package:dicom_viewer_proto/instance/application/instance_state_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class WindowCenterChanger extends ConsumerWidget {
  const WindowCenterChanger({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
        child: ref
            .watch(instanceViewStateNotifierProvider)
            .maybeWhen(orElse: () => const WindowCenterButtons()));
  }
}

class WindowCenterButtons extends ConsumerWidget {
  const WindowCenterButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
            onPressed: () {
              ref
                  .read(windowCenterProvider.notifier)
                  .update((state) => state + 1);
              ref
                  .read(instanceViewStateNotifierProvider.notifier)
                  .changeContrast();
            },
            child: const Text("+")),
        const Divider(),
        ElevatedButton(
            onPressed: () {
              ref
                  .read(windowCenterProvider.notifier)
                  .update((state) => state - 1);
              ref
                  .read(instanceViewStateNotifierProvider.notifier)
                  .changeContrast();
            },
            child: const Text("-"))
      ],
    );
  }
}

final windowCenterProvider = StateProvider<int>((ref) {
  return 500;
});
