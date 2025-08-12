// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

/// generated route for
/// [AnalysisAdminPage]
class AnalysisAdminRoute extends PageRouteInfo<void> {
  const AnalysisAdminRoute({List<PageRouteInfo>? children})
    : super(AnalysisAdminRoute.name, initialChildren: children);

  static const String name = 'AnalysisAdminRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const AnalysisAdminPage());
    },
  );
}

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
/// [CreateEmployeeAdminPage]
class CreateEmployeeAdminRoute
    extends PageRouteInfo<CreateEmployeeAdminRouteArgs> {
  CreateEmployeeAdminRoute({
    Key? key,
    String? userId,
    List<PageRouteInfo>? children,
  }) : super(
         CreateEmployeeAdminRoute.name,
         args: CreateEmployeeAdminRouteArgs(key: key, userId: userId),
         initialChildren: children,
       );

  static const String name = 'CreateEmployeeAdminRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CreateEmployeeAdminRouteArgs>(
        orElse: () => const CreateEmployeeAdminRouteArgs(),
      );
      return WrappedRoute(
        child: CreateEmployeeAdminPage(key: args.key, userId: args.userId),
      );
    },
  );
}

class CreateEmployeeAdminRouteArgs {
  const CreateEmployeeAdminRouteArgs({this.key, this.userId});

  final Key? key;

  final String? userId;

  @override
  String toString() {
    return 'CreateEmployeeAdminRouteArgs{key: $key, userId: $userId}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! CreateEmployeeAdminRouteArgs) return false;
    return key == other.key && userId == other.userId;
  }

  @override
  int get hashCode => key.hashCode ^ userId.hashCode;
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
/// [CustomerDetailPage]
class CustomerDetailRoute extends PageRouteInfo<CustomerDetailRouteArgs> {
  CustomerDetailRoute({
    Key? key,
    required String? userId,
    String? collectionRoleDocId,
    List<PageRouteInfo>? children,
  }) : super(
         CustomerDetailRoute.name,
         args: CustomerDetailRouteArgs(
           key: key,
           userId: userId,
           collectionRoleDocId: collectionRoleDocId,
         ),
         initialChildren: children,
       );

  static const String name = 'CustomerDetailRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CustomerDetailRouteArgs>();
      return WrappedRoute(
        child: CustomerDetailPage(
          key: args.key,
          userId: args.userId,
          collectionRoleDocId: args.collectionRoleDocId,
        ),
      );
    },
  );
}

class CustomerDetailRouteArgs {
  const CustomerDetailRouteArgs({
    this.key,
    required this.userId,
    this.collectionRoleDocId,
  });

  final Key? key;

  final String? userId;

  final String? collectionRoleDocId;

  @override
  String toString() {
    return 'CustomerDetailRouteArgs{key: $key, userId: $userId, collectionRoleDocId: $collectionRoleDocId}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! CustomerDetailRouteArgs) return false;
    return key == other.key &&
        userId == other.userId &&
        collectionRoleDocId == other.collectionRoleDocId;
  }

  @override
  int get hashCode =>
      key.hashCode ^ userId.hashCode ^ collectionRoleDocId.hashCode;
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
/// [DashboardEmployeePage]
class DashboardEmployeeRoute extends PageRouteInfo<void> {
  const DashboardEmployeeRoute({List<PageRouteInfo>? children})
    : super(DashboardEmployeeRoute.name, initialChildren: children);

  static const String name = 'DashboardEmployeeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const DashboardEmployeePage();
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
/// [EmployeeAdminPage]
class EmployeeAdminRoute extends PageRouteInfo<void> {
  const EmployeeAdminRoute({List<PageRouteInfo>? children})
    : super(EmployeeAdminRoute.name, initialChildren: children);

  static const String name = 'EmployeeAdminRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const EmployeeAdminPage());
    },
  );
}

/// generated route for
/// [ExpressPage]
class ExpressRoute extends PageRouteInfo<void> {
  const ExpressRoute({List<PageRouteInfo>? children})
    : super(ExpressRoute.name, initialChildren: children);

  static const String name = 'ExpressRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const ExpressPage());
    },
  );
}

/// generated route for
/// [HistoryPage]
class HistoryRoute extends PageRouteInfo<void> {
  const HistoryRoute({List<PageRouteInfo>? children})
    : super(HistoryRoute.name, initialChildren: children);

  static const String name = 'HistoryRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const HistoryPage());
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
      return const HomeAdminPage();
    },
  );
}

/// generated route for
/// [HomeEmployeePage]
class HomeEmployeeRoute extends PageRouteInfo<void> {
  const HomeEmployeeRoute({List<PageRouteInfo>? children})
    : super(HomeEmployeeRoute.name, initialChildren: children);

  static const String name = 'HomeEmployeeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const HomeEmployeePage());
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
      return WrappedRoute(child: const HomePage());
    },
  );
}

/// generated route for
/// [PaymentCollectionTypePage]
class PaymentCollectionTypeRoute
    extends PageRouteInfo<PaymentCollectionTypeRouteArgs> {
  PaymentCollectionTypeRoute({
    Key? key,
    required double lat,
    required double lng,
    List<PageRouteInfo>? children,
  }) : super(
         PaymentCollectionTypeRoute.name,
         args: PaymentCollectionTypeRouteArgs(key: key, lat: lat, lng: lng),
         initialChildren: children,
       );

  static const String name = 'PaymentCollectionTypeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<PaymentCollectionTypeRouteArgs>();
      return WrappedRoute(
        child: PaymentCollectionTypePage(
          key: args.key,
          lat: args.lat,
          lng: args.lng,
        ),
      );
    },
  );
}

class PaymentCollectionTypeRouteArgs {
  const PaymentCollectionTypeRouteArgs({
    this.key,
    required this.lat,
    required this.lng,
  });

  final Key? key;

  final double lat;

  final double lng;

  @override
  String toString() {
    return 'PaymentCollectionTypeRouteArgs{key: $key, lat: $lat, lng: $lng}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! PaymentCollectionTypeRouteArgs) return false;
    return key == other.key && lat == other.lat && lng == other.lng;
  }

  @override
  int get hashCode => key.hashCode ^ lat.hashCode ^ lng.hashCode;
}

/// generated route for
/// [PaymentPage]
class PaymentRoute extends PageRouteInfo<void> {
  const PaymentRoute({List<PageRouteInfo>? children})
    : super(PaymentRoute.name, initialChildren: children);

  static const String name = 'PaymentRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const PaymentPage();
    },
  );
}

/// generated route for
/// [ProfileAdminPage]
class ProfileAdminRoute extends PageRouteInfo<void> {
  const ProfileAdminRoute({List<PageRouteInfo>? children})
    : super(ProfileAdminRoute.name, initialChildren: children);

  static const String name = 'ProfileAdminRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const ProfileAdminPage());
    },
  );
}

/// generated route for
/// [ProfilePage]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute({List<PageRouteInfo>? children})
    : super(ProfileRoute.name, initialChildren: children);

  static const String name = 'ProfileRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const ProfilePage());
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
