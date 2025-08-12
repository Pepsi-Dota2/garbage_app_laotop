import 'package:auto_route/auto_route.dart';
import 'package:hr_app/src/core/helper/token_storage.dart';
import 'package:hr_app/src/core/router/router.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  Future<void> onNavigation(NavigationResolver resolver, StackRouter router) async {
    final token = await TokenStorage.getAccessToken();
    if (token != null) {
      resolver.next();
    } else {
      router.push(const AuthRoute());
    }
  }
}

class AdminGuard extends AutoRouteGuard {
  @override
  Future<void> onNavigation(NavigationResolver resolver, StackRouter router) async {
    final token = await TokenStorage.getAccessToken();
    final role = await UserRole.getRole();

    if (token != null && role == 'admin') {
      resolver.next();
    } else {
      router.push(const AuthRoute());
    }
  }
}

class EmployeeGuard extends AutoRouteGuard {
  @override
  Future<void> onNavigation(NavigationResolver resolver, StackRouter router) async {
    final token = await TokenStorage.getAccessToken();
    final role = await UserRole.getRole();

    if (token != null && role == 'employee') {
      resolver.next();
    } else {
      router.push(const AuthRoute());
    }
  }
}
