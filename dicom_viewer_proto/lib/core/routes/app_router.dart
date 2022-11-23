import 'package:auto_route/auto_route.dart';
import 'package:dicom_viewer_proto/study_detail/view/study_detail_page.dart';

import '../../landing_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: LandingPage, initial: true),
    AutoRoute(page: StudyDetailPage)
  ],
)
class $AppRouter {}
