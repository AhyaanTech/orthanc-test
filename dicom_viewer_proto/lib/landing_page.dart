import 'package:dicom_viewer_proto/core/app_widget.dart';
import 'package:dicom_viewer_proto/core/routes/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LandingPage extends ConsumerStatefulWidget {
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LandingPageState();
}

class _LandingPageState extends ConsumerState<LandingPage> {
  @override
  void initState() {}

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              ref.read(appRouterProvider).push(const AllStudiesRoute());
            },
            child: const Text("Initiate"),
          ),
        ),
      ),
    );
  }
}
