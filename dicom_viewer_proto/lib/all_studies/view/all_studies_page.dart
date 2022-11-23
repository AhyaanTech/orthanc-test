import 'package:dicom_viewer_proto/all_studies/view/study_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../shared/all_patients_state_notifier_provider.dart';

class AllStudiesPage extends ConsumerStatefulWidget {
  const AllStudiesPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AllStudiesPageState();
}

class _AllStudiesPageState extends ConsumerState<AllStudiesPage> {
  @override
  void initState() {
    ref.read(allStudiesStateNotifierProvider.notifier).getAllStudies();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const AllStudiesView();
  }
}

class AllStudiesView extends ConsumerWidget {
  const AllStudiesView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: FractionallySizedBox(
            heightFactor: 0.25,
            widthFactor: 0.75,
            child: ref.watch(allStudiesStateNotifierProvider).when(
              data: (data) {
                return ListView.builder(
                  shrinkWrap: true,
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    return SeriesListItem(
                      seriesItem: data[index],
                    );
                  },
                );
              },
              error: (error, trace) {
                return const Text("Something went wrong");
              },
              loading: () {
                return const CircularProgressIndicator();
              },
            ),
          ),
        ),
      ),
    );
  }
}
