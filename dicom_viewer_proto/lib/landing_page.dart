import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'all_studies/shared/all_patients_state_notifier_provider.dart';
import 'all_studies/view/series_list_item.dart';

class LandingPage extends ConsumerStatefulWidget {
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LandingPageState();
}

class _LandingPageState extends ConsumerState<LandingPage> {
  @override
  void initState() {
    ref.read(allStudiesStateNotifierProvider.notifier).getPatients();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
