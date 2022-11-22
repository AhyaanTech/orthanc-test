import 'package:auto_route/auto_route.dart';
import 'package:dicom_viewer_proto/patient_detail/view/patient_detail_page.dart';

import '../../landing_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: LandingPage, initial: true),
    AutoRoute(page: PatientDetailPage)
  ],
)
class $AppRouter {}
