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
/// [CreateZonePage]
class CreateZoneRoute extends PageRouteInfo<void> {
  const CreateZoneRoute({List<PageRouteInfo>? children})
    : super(CreateZoneRoute.name, initialChildren: children);

  static const String name = 'CreateZoneRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const CreateZonePage());
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
/// [HomeAdminPage]
class HomeAdminRoute extends PageRouteInfo<void> {
  const HomeAdminRoute({List<PageRouteInfo>? children})
    : super(HomeAdminRoute.name, initialChildren: children);

  static const String name = 'HomeAdminRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const HomeAdminPage());
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

/// generated route for
/// [RegisterPage]
class RegisterRoute extends PageRouteInfo<void> {
  const RegisterRoute({List<PageRouteInfo>? children})
    : super(RegisterRoute.name, initialChildren: children);

  static const String name = 'RegisterRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const RegisterPage());
    },
  );
}

/// generated route for
/// [ReportAdminPage]
class ReportAdminRoute extends PageRouteInfo<void> {
  const ReportAdminRoute({List<PageRouteInfo>? children})
    : super(ReportAdminRoute.name, initialChildren: children);

  static const String name = 'ReportAdminRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const ReportAdminPage());
    },
  );
}

/// generated route for
/// [ScheduleAdminPage]
class ScheduleAdminRoute extends PageRouteInfo<void> {
  const ScheduleAdminRoute({List<PageRouteInfo>? children})
    : super(ScheduleAdminRoute.name, initialChildren: children);

  static const String name = 'ScheduleAdminRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const ScheduleAdminPage());
    },
  );
}

/// generated route for
/// [UserAdminEditPage]
class UserAdminEditRoute extends PageRouteInfo<UserAdminEditRouteArgs> {
  UserAdminEditRoute({
    Key? key,
    required String userId,
    List<PageRouteInfo>? children,
  }) : super(
         UserAdminEditRoute.name,
         args: UserAdminEditRouteArgs(key: key, userId: userId),
         initialChildren: children,
       );

  static const String name = 'UserAdminEditRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<UserAdminEditRouteArgs>();
      return WrappedRoute(
        child: UserAdminEditPage(key: args.key, userId: args.userId),
      );
    },
  );
}

class UserAdminEditRouteArgs {
  const UserAdminEditRouteArgs({this.key, required this.userId});

  final Key? key;

  final String userId;

  @override
  String toString() {
    return 'UserAdminEditRouteArgs{key: $key, userId: $userId}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! UserAdminEditRouteArgs) return false;
    return key == other.key && userId == other.userId;
  }

  @override
  int get hashCode => key.hashCode ^ userId.hashCode;
}

/// generated route for
/// [UserAdminPage]
class UserAdminRoute extends PageRouteInfo<void> {
  const UserAdminRoute({List<PageRouteInfo>? children})
    : super(UserAdminRoute.name, initialChildren: children);

  static const String name = 'UserAdminRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const UserAdminPage());
    },
  );
}

/// generated route for
/// [ZoneAdminPage]
class ZoneAdminRoute extends PageRouteInfo<void> {
  const ZoneAdminRoute({List<PageRouteInfo>? children})
    : super(ZoneAdminRoute.name, initialChildren: children);

  static const String name = 'ZoneAdminRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const ZoneAdminPage());
    },
  );
}

/// generated route for
/// [ZoneDetailPage]
class ZoneDetailRoute extends PageRouteInfo<ZoneDetailRouteArgs> {
  ZoneDetailRoute({
    Key? key,
    required String userId,
    List<PageRouteInfo>? children,
  }) : super(
         ZoneDetailRoute.name,
         args: ZoneDetailRouteArgs(key: key, userId: userId),
         initialChildren: children,
       );

  static const String name = 'ZoneDetailRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ZoneDetailRouteArgs>();
      return WrappedRoute(
        child: ZoneDetailPage(key: args.key, userId: args.userId),
      );
    },
  );
}

class ZoneDetailRouteArgs {
  const ZoneDetailRouteArgs({this.key, required this.userId});

  final Key? key;

  final String userId;

  @override
  String toString() {
    return 'ZoneDetailRouteArgs{key: $key, userId: $userId}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ZoneDetailRouteArgs) return false;
    return key == other.key && userId == other.userId;
  }

  @override
  int get hashCode => key.hashCode ^ userId.hashCode;
}
