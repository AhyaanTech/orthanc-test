import 'package:dicom_viewer_proto/instance/application/instance_state_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class WindowWidthChanger extends ConsumerWidget {
  const WindowWidthChanger({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
        child: ref
            .watch(instanceViewStateNotifierProvider)
            .maybeWhen(orElse: () => const WindowWidthButtons()));
  }
}

class WindowWidthButtons extends ConsumerWidget {
  const WindowWidthButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        ElevatedButton(
            onPressed: () {
              ref
                  .read(windowWidthProvider.notifier)
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
                  .read(windowWidthProvider.notifier)
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

final windowWidthProvider = StateProvider<int>((ref) {
  return 500;
});
