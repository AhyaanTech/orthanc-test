import 'package:dicom_viewer_proto/series/shared/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SeriesDetailPage extends ConsumerStatefulWidget {
  final String seriesId;

  SeriesDetailPage(this.seriesId, {super.key});
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
        body: Center(
          child: ref.watch(seriesDetailPageStateNotifierProvider).when(
                data: (data) {
                  return ListView.builder(
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: Text(data.instances![index]),
                      );
                    },
                  );
                },
                error: (error, stackTrace) =>
                    const Text("Something went wrong"),
                loading: () => const CircularProgressIndicator(),
              ),
        ),
      ),
    );
  }
}
