// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import '../../landing_page.dart' as _i1;
import '../../study/all_studies/model/study.dart' as _i6;
import '../../study/all_studies/view/all_studies_page.dart' as _i3;
import '../../study/study_detail/view/study_detail_page.dart' as _i2;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    LandingRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i1.LandingPage(),
      );
    },
    StudyDetailRoute.name: (routeData) {
      final args = routeData.argsAs<StudyDetailRouteArgs>();
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i2.StudyDetailPage(
          args.study,
          key: args.key,
        ),
      );
    },
    AllStudiesRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.AllStudiesPage(),
      );
    },
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(
          LandingRoute.name,
          path: '/',
        ),
        _i4.RouteConfig(
          StudyDetailRoute.name,
          path: '/study-detail-page',
        ),
        _i4.RouteConfig(
          AllStudiesRoute.name,
          path: '/all-studies-page',
        ),
      ];
}

/// generated route for
/// [_i1.LandingPage]
class LandingRoute extends _i4.PageRouteInfo<void> {
  const LandingRoute()
      : super(
          LandingRoute.name,
          path: '/',
        );

  static const String name = 'LandingRoute';
}

/// generated route for
/// [_i2.StudyDetailPage]
class StudyDetailRoute extends _i4.PageRouteInfo<StudyDetailRouteArgs> {
  StudyDetailRoute({
    required _i6.Study study,
    _i5.Key? key,
  }) : super(
          StudyDetailRoute.name,
          path: '/study-detail-page',
          args: StudyDetailRouteArgs(
            study: study,
            key: key,
          ),
        );

  static const String name = 'StudyDetailRoute';
}

class StudyDetailRouteArgs {
  const StudyDetailRouteArgs({
    required this.study,
    this.key,
  });

  final _i6.Study study;

  final _i5.Key? key;

  @override
  String toString() {
    return 'StudyDetailRouteArgs{study: $study, key: $key}';
  }
}

/// generated route for
/// [_i3.AllStudiesPage]
class AllStudiesRoute extends _i4.PageRouteInfo<void> {
  const AllStudiesRoute()
      : super(
          AllStudiesRoute.name,
          path: '/all-studies-page',
        );

  static const String name = 'AllStudiesRoute';
}
