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
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import '../../landing_page.dart' as _i1;
import '../../series/view/series_detail_page.dart' as _i4;
import '../../study/all_studies/view/all_studies_page.dart' as _i3;
import '../../study/model/study.dart' as _i7;
import '../../study/study_detail/view/study_detail_page.dart' as _i2;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    LandingRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i1.LandingPage(),
      );
    },
    StudyDetailRoute.name: (routeData) {
      final args = routeData.argsAs<StudyDetailRouteArgs>();
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i2.StudyDetailPage(
          args.study,
          key: args.key,
        ),
      );
    },
    AllStudiesRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.AllStudiesPage(),
      );
    },
    SeriesDetailRoute.name: (routeData) {
      final args = routeData.argsAs<SeriesDetailRouteArgs>();
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i4.SeriesDetailPage(
          args.seriesId,
          key: args.key,
        ),
      );
    },
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(
          LandingRoute.name,
          path: '/',
        ),
        _i5.RouteConfig(
          StudyDetailRoute.name,
          path: '/study-detail-page',
        ),
        _i5.RouteConfig(
          AllStudiesRoute.name,
          path: '/all-studies-page',
        ),
        _i5.RouteConfig(
          SeriesDetailRoute.name,
          path: '/series-detail-page',
        ),
      ];
}

/// generated route for
/// [_i1.LandingPage]
class LandingRoute extends _i5.PageRouteInfo<void> {
  const LandingRoute()
      : super(
          LandingRoute.name,
          path: '/',
        );

  static const String name = 'LandingRoute';
}

/// generated route for
/// [_i2.StudyDetailPage]
class StudyDetailRoute extends _i5.PageRouteInfo<StudyDetailRouteArgs> {
  StudyDetailRoute({
    required _i7.Study study,
    _i6.Key? key,
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

  final _i7.Study study;

  final _i6.Key? key;

  @override
  String toString() {
    return 'StudyDetailRouteArgs{study: $study, key: $key}';
  }
}

/// generated route for
/// [_i3.AllStudiesPage]
class AllStudiesRoute extends _i5.PageRouteInfo<void> {
  const AllStudiesRoute()
      : super(
          AllStudiesRoute.name,
          path: '/all-studies-page',
        );

  static const String name = 'AllStudiesRoute';
}

/// generated route for
/// [_i4.SeriesDetailPage]
class SeriesDetailRoute extends _i5.PageRouteInfo<SeriesDetailRouteArgs> {
  SeriesDetailRoute({
    required String seriesId,
    _i6.Key? key,
  }) : super(
          SeriesDetailRoute.name,
          path: '/series-detail-page',
          args: SeriesDetailRouteArgs(
            seriesId: seriesId,
            key: key,
          ),
        );

  static const String name = 'SeriesDetailRoute';
}

class SeriesDetailRouteArgs {
  const SeriesDetailRouteArgs({
    required this.seriesId,
    this.key,
  });

  final String seriesId;

  final _i6.Key? key;

  @override
  String toString() {
    return 'SeriesDetailRouteArgs{seriesId: $seriesId, key: $key}';
  }
}
