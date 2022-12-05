import 'package:dicom_viewer_proto/instance/contrast/image_contrast_changer.dart';
import 'package:dicom_viewer_proto/instance/presentation/instance_view.dart';
import 'package:dicom_viewer_proto/instance/windower/window_center_changer.dart';
import 'package:dicom_viewer_proto/instance/windower/window_width_changer.dart';
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
            SizedBox(
              height: double.maxFinite,
              width: 375,
              child: ref
                  .watch(seriesDetailPageStateNotifierProvider)
                  .whenData((value) => InstanceListView(
                        data: value,
                      ))
                  .value,
            ),
            const SizedBox(
              width: 15,
            ),
            ref.watch(seriesDetailPageStateNotifierProvider).when(
                  data: (data) {
                    return InstanceView(data.instances!.first);
                  },
                  error: (error, stackTrace) => Text(error.toString()),
                  loading: () => const CircularProgressIndicator(),
                ),
            const SizedBox(width: 15),
            const ImageContrastChanger(),
            const SizedBox(width: 15),
            Text(ref.watch(contrastProvider).toString()),
            const SizedBox(width: 15),
            const WindowCenterChanger(),
            const SizedBox(width: 15),
            Text(ref.watch(windowCenterProvider).toString()),
            const SizedBox(width: 15),
            const WindowWidthChanger(),
            const SizedBox(width: 15),
            Text(ref.watch(windowWidthProvider).toString()),
          ],
        ),
      ),
    );
  }
}
