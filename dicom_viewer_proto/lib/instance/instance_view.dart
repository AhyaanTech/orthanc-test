import 'dart:typed_data';

import 'package:dicom_viewer_proto/instance/instance_state_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class InstanceView extends ConsumerStatefulWidget {
  final String instanceId;

  InstanceView(this.instanceId);
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
    return Container(
        child: ref.watch(instanceViewStateNotifierProvider).when(
            data: (data) => Image.memory(data),
            error: (error, stackTrace) => const Text("Something went wrong"),
            loading: () => const CircularProgressIndicator()));
  }
}
