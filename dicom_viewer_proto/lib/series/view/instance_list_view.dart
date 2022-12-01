import 'package:dicom_viewer_proto/instance/application/instance_state_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';

import '../models/series.dart';

class InstanceListView extends ConsumerWidget {
  final Series data;
  final Logger _logger = Logger();
  InstanceListView({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView.separated(
      itemCount: data.instances!.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return GestureDetector(
          child: SizedBox(
            width: 200,
            child: Card(
              child: Row(
                children: [
                  Text(index.toString()),
                  const Text(" : "),
                  Text(data.instances![index])
                ],
              ),
            ),
          ),
          onTap: () {
            var instanceId = data.instances![index];
            _logger.d(instanceId);
            ref
                .read(instanceViewStateNotifierProvider.notifier)
                .getInstanceDetails(instanceId: instanceId);
            ref
                .read(instanceViewStateNotifierProvider.notifier)
                .getImageAsync(instanceId: instanceId);
          },
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return const Divider();
      },
    );
  }
}
