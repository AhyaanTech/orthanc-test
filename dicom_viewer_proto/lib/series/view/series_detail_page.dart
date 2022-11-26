import 'package:dicom_viewer_proto/instance/instance_view.dart';
import 'package:dicom_viewer_proto/series/shared/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'instance_list_view.dart';

class SeriesDetailPage extends ConsumerStatefulWidget {
  final String seriesId;

  const SeriesDetailPage(this.seriesId, {super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _SeriesDetailPageState();
}

class _SeriesDetailPageState extends ConsumerState<SeriesDetailPage> {
  @override
  void initState() {
    ref
        .read(seriesDetailPageStateNotifierProvider.notifier)
        .getSeriesDetails(widget.seriesId);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Row(
          children: [
            Expanded(
              flex: 1,
              child: SizedBox(
                height: double.maxFinite,
                width: 500,
                child: ref
                    .watch(seriesDetailPageStateNotifierProvider)
                    .whenData((value) => InstanceListView(
                          data: value,
                        ))
                    .value,
              ),
            ),
            Expanded(
              flex: 3,
              child: InstanceView(),
            )
          ],
        ),
      ),
    );
  }
}
