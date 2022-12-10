import 'package:dicom_viewer_proto/instance/application/instance_state_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'dart:ui' as ui;

class InstanceView extends ConsumerStatefulWidget {
  final String instanceId;

  const InstanceView(this.instanceId, {super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _InstanceViewState();
}

class _InstanceViewState extends ConsumerState<InstanceView> {
  @override
  void initState() {
    Future.microtask(() async => await ref
        .read(instanceViewStateNotifierProvider.notifier)
        .getImageAsync(instanceId: widget.instanceId));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 1024,
      width: 500,
      child: ref.watch(instanceViewStateNotifierProvider).when(
            fetching: () => const CircularProgressIndicator(),
            rendered: (rendered) => Image.memory(rendered.imageData),
            error: (error) => Center(child: Text(error)),
            rawUi: (ui.Image image) => RawImage(
              image: image,
            ),
          ),
    );
  }
}
