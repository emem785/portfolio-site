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

import '../main.dart' as _i1;
import '../project_page.dart' as _i2;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    MyHomeRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.MyHomePage(),
      );
    },
    ProjectWrapperRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<ProjectWrapperRouteArgs>(
          orElse: () =>
              ProjectWrapperRouteArgs(title: pathParams.getString('title')));
      return _i3.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i2.ProjectWrapperPage(
          key: args.key,
          title: args.title,
        ),
      );
    },
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(
          MyHomeRoute.name,
          path: '/',
        ),
        _i3.RouteConfig(
          ProjectWrapperRoute.name,
          path: '/projects/:title',
        ),
      ];
}

/// generated route for
/// [_i1.MyHomePage]
class MyHomeRoute extends _i3.PageRouteInfo<void> {
  const MyHomeRoute()
      : super(
          MyHomeRoute.name,
          path: '/',
        );

  static const String name = 'MyHomeRoute';
}

/// generated route for
/// [_i2.ProjectWrapperPage]
class ProjectWrapperRoute extends _i3.PageRouteInfo<ProjectWrapperRouteArgs> {
  ProjectWrapperRoute({
    _i4.Key? key,
    required String title,
  }) : super(
          ProjectWrapperRoute.name,
          path: '/projects/:title',
          args: ProjectWrapperRouteArgs(
            key: key,
            title: title,
          ),
          rawPathParams: {'title': title},
        );

  static const String name = 'ProjectWrapperRoute';
}

class ProjectWrapperRouteArgs {
  const ProjectWrapperRouteArgs({
    this.key,
    required this.title,
  });

  final _i4.Key? key;

  final String title;

  @override
  String toString() {
    return 'ProjectWrapperRouteArgs{key: $key, title: $title}';
  }
}
