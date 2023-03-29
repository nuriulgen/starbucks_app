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
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;

import '../layers/presentation/view/detail/detail_view.dart' as _i6;
import '../layers/presentation/view/home/home_view.dart' as _i3;
import '../layers/presentation/view/login/login_view.dart' as _i2;
import '../layers/presentation/view/navigation_bar_main_view.dart' as _i4;
import '../layers/presentation/view/payment/payment_completed_view.dart' as _i5;
import '../layers/presentation/view/splashScreen/splash_screen_view.dart'
    as _i1;

class AppRouter extends _i7.RootStackRouter {
  AppRouter([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    SplashScreenRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.SplashScreenView(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.LoginView(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.HomeView(),
      );
    },
    NavigationBarRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.NavigationBarView(),
      );
    },
    PaymentCompletedRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.PaymentCompletedView(),
      );
    },
    DetailRoute.name: (routeData) {
      final args = routeData.argsAs<DetailRouteArgs>();
      return _i7.MaterialPageX<String>(
        routeData: routeData,
        child: _i6.DetailView(
          key: args.key,
          coffeeName: args.coffeeName,
          imagePath: args.imagePath,
        ),
      );
    },
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: 'splash',
          fullMatch: true,
        ),
        _i7.RouteConfig(
          SplashScreenRoute.name,
          path: 'splash',
        ),
        _i7.RouteConfig(
          LoginRoute.name,
          path: 'login',
        ),
        _i7.RouteConfig(
          HomeRoute.name,
          path: 'home',
        ),
        _i7.RouteConfig(
          NavigationBarRoute.name,
          path: 'navigation',
        ),
        _i7.RouteConfig(
          PaymentCompletedRoute.name,
          path: 'orderCompleted',
        ),
        _i7.RouteConfig(
          DetailRoute.name,
          path: 'detail',
        ),
      ];
}

/// generated route for
/// [_i1.SplashScreenView]
class SplashScreenRoute extends _i7.PageRouteInfo<void> {
  const SplashScreenRoute()
      : super(
          SplashScreenRoute.name,
          path: 'splash',
        );

  static const String name = 'SplashScreenRoute';
}

/// generated route for
/// [_i2.LoginView]
class LoginRoute extends _i7.PageRouteInfo<void> {
  const LoginRoute()
      : super(
          LoginRoute.name,
          path: 'login',
        );

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i3.HomeView]
class HomeRoute extends _i7.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: 'home',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i4.NavigationBarView]
class NavigationBarRoute extends _i7.PageRouteInfo<void> {
  const NavigationBarRoute()
      : super(
          NavigationBarRoute.name,
          path: 'navigation',
        );

  static const String name = 'NavigationBarRoute';
}

/// generated route for
/// [_i5.PaymentCompletedView]
class PaymentCompletedRoute extends _i7.PageRouteInfo<void> {
  const PaymentCompletedRoute()
      : super(
          PaymentCompletedRoute.name,
          path: 'orderCompleted',
        );

  static const String name = 'PaymentCompletedRoute';
}

/// generated route for
/// [_i6.DetailView]
class DetailRoute extends _i7.PageRouteInfo<DetailRouteArgs> {
  DetailRoute({
    _i8.Key? key,
    required String coffeeName,
    required String imagePath,
  }) : super(
          DetailRoute.name,
          path: 'detail',
          args: DetailRouteArgs(
            key: key,
            coffeeName: coffeeName,
            imagePath: imagePath,
          ),
        );

  static const String name = 'DetailRoute';
}

class DetailRouteArgs {
  const DetailRouteArgs({
    this.key,
    required this.coffeeName,
    required this.imagePath,
  });

  final _i8.Key? key;

  final String coffeeName;

  final String imagePath;

  @override
  String toString() {
    return 'DetailRouteArgs{key: $key, coffeeName: $coffeeName, imagePath: $imagePath}';
  }
}
