// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

/// generated route for
/// [AuthPage]
class AuthRoute extends PageRouteInfo<void> {
  const AuthRoute({List<PageRouteInfo>? children})
    : super(AuthRoute.name, initialChildren: children);

  static const String name = 'AuthRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const AuthPage());
    },
  );
}

/// generated route for
/// [DashboardAdminPage]
class DashboardAdminRoute extends PageRouteInfo<void> {
  const DashboardAdminRoute({List<PageRouteInfo>? children})
    : super(DashboardAdminRoute.name, initialChildren: children);

  static const String name = 'DashboardAdminRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const DashboardAdminPage();
    },
  );
}

/// generated route for
/// [DashboardPage]
class DashboardRoute extends PageRouteInfo<void> {
  const DashboardRoute({List<PageRouteInfo>? children})
    : super(DashboardRoute.name, initialChildren: children);

  static const String name = 'DashboardRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const DashboardPage();
    },
  );
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const HomePage();
    },
  );
}

/// generated route for
/// [RedirectPage]
class RedirectRoute extends PageRouteInfo<void> {
  const RedirectRoute({List<PageRouteInfo>? children})
    : super(RedirectRoute.name, initialChildren: children);

  static const String name = 'RedirectRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const RedirectPage();
    },
  );
}
