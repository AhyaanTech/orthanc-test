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

import '../../all_patients/model/patient_list.dart' as _i5;
import '../../landing_page.dart' as _i1;
import '../../patient_detail/view/patient_detail_page.dart' as _i2;

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
    PatientDetailRoute.name: (routeData) {
      final args = routeData.argsAs<PatientDetailRouteArgs>();
      return _i3.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i2.PatientDetailPage(
          args.patientList,
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
          PatientDetailRoute.name,
          path: '/patient-detail-page',
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
/// [_i2.PatientDetailPage]
class PatientDetailRoute extends _i3.PageRouteInfo<PatientDetailRouteArgs> {
  PatientDetailRoute({
    required _i5.PatientsList patientList,
    _i4.Key? key,
  }) : super(
          PatientDetailRoute.name,
          path: '/patient-detail-page',
          args: PatientDetailRouteArgs(
            patientList: patientList,
            key: key,
          ),
        );

  static const String name = 'PatientDetailRoute';
}

class PatientDetailRouteArgs {
  const PatientDetailRouteArgs({
    required this.patientList,
    this.key,
  });

  final _i5.PatientsList patientList;

  final _i4.Key? key;

  @override
  String toString() {
    return 'PatientDetailRouteArgs{patientList: $patientList, key: $key}';
  }
}
