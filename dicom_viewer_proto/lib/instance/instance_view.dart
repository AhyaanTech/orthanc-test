import 'dart:typed_data';

import 'package:dicom_viewer_proto/instance/instance_state_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class InstanceView extends ConsumerWidget {
  const InstanceView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
        child: ref.watch(instanceViewStateNotifierProvider).when(
            data: (data) => Image.memory(Uint8List.fromList(data)),
            error: (error, stackTrace) => const Text("Something went wrong"),
            loading: () => const CircularProgressIndicator()));
  }
}
