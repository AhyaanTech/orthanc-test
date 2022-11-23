import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:dicom_viewer_proto/core/app_widget.dart';
import 'package:dicom_viewer_proto/core/routes/app_router.gr.dart';

import '../model/all_studies_response.dart';

class SeriesListItem extends ConsumerWidget {
  final AllStudiesResponse seriesItem;
  const SeriesListItem({
    Key? key,
    required this.seriesItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListTile(
        leading: Text(seriesItem.id),
        trailing: Text(seriesItem.patientMainDicomTags.patientName.toString()),
        onTap: () => {
              ref
                  .read(appRouterProvider)
                  .popAndPush(StudyDetailRoute(seriesList: seriesItem))
            });
  }
}
