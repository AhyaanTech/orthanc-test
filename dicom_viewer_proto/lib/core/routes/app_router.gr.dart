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
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

import '../../all_studies/model/all_studies_response.dart' as _i5;
import '../../landing_page.dart' as _i1;
import '../../study_detail/view/study_detail_page.dart' as _i2;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    LandingRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i1.LandingPage(),
      );
    },
    StudyDetailRoute.name: (routeData) {
      final args = routeData.argsAs<StudyDetailRouteArgs>();
      return _i3.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i2.StudyDetailPage(
          args.seriesList,
          key: args.key,
        ),
      );
    },
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(
          LandingRoute.name,
          path: '/',
        ),
        _i3.RouteConfig(
          StudyDetailRoute.name,
          path: '/study-detail-page',
        ),
      ];
}

/// generated route for
/// [_i1.LandingPage]
class LandingRoute extends _i3.PageRouteInfo<void> {
  const LandingRoute()
      : super(
          LandingRoute.name,
          path: '/',
        );

  static const String name = 'LandingRoute';
}

/// generated route for
/// [_i2.StudyDetailPage]
class StudyDetailRoute extends _i3.PageRouteInfo<StudyDetailRouteArgs> {
  StudyDetailRoute({
    required _i5.AllStudiesResponse seriesList,
    _i4.Key? key,
  }) : super(
          StudyDetailRoute.name,
          path: '/study-detail-page',
          args: StudyDetailRouteArgs(
            seriesList: seriesList,
            key: key,
          ),
        );

  static const String name = 'StudyDetailRoute';
}

class StudyDetailRouteArgs {
  const StudyDetailRouteArgs({
    required this.seriesList,
    this.key,
  });

  final _i5.AllStudiesResponse seriesList;

  final _i4.Key? key;

  @override
  String toString() {
    return 'StudyDetailRouteArgs{seriesList: $seriesList, key: $key}';
  }
}
