// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i10;
import 'package:flutter/material.dart' as _i11;
import 'package:riverpod_tour/presentations/complete_profile_view/complete_profile_view.dart'
    as _i1;
import 'package:riverpod_tour/presentations/complete_profile_view/what_your_goal_view.dart'
    as _i9;
import 'package:riverpod_tour/presentations/home/home_page.dart' as _i2;
import 'package:riverpod_tour/presentations/login/login_page.dart' as _i3;
import 'package:riverpod_tour/presentations/main_tab/main_tab_view.dart' as _i4;
import 'package:riverpod_tour/presentations/on_boarding/on_boaring_page.dart'
    as _i5;
import 'package:riverpod_tour/presentations/register/register_page.dart' as _i6;
import 'package:riverpod_tour/presentations/splash/splash_page.dart' as _i7;
import 'package:riverpod_tour/presentations/started/stared_view.dart' as _i8;

abstract class $AppRouter extends _i10.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i10.PageFactory> pagesMap = {
    CompleteProfileView.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.CompleteProfileView(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.HomePage(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.LoginPage(),
      );
    },
    MainTabView.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.MainTabView(),
      );
    },
    OnBoarding.name: (routeData) {
      final args = routeData.argsAs<OnBoardingArgs>(
          orElse: () => const OnBoardingArgs());
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.OnBoarding(key: args.key),
      );
    },
    RegisterRouteView.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.RegisterPageView(),
      );
    },
    SplashRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.SplashPage(),
      );
    },
    StartedView.name: (routeData) {
      final args = routeData.argsAs<StartedViewArgs>(
          orElse: () => const StartedViewArgs());
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i8.StartedView(key: args.key),
      );
    },
    WhatYourGoalView.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.WhatYourGoalView(),
      );
    },
  };
}

/// generated route for
/// [_i1.CompleteProfileView]
class CompleteProfileView extends _i10.PageRouteInfo<void> {
  const CompleteProfileView({List<_i10.PageRouteInfo>? children})
      : super(
          CompleteProfileView.name,
          initialChildren: children,
        );

  static const String name = 'CompleteProfileView';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i2.HomePage]
class HomeRoute extends _i10.PageRouteInfo<void> {
  const HomeRoute({List<_i10.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i3.LoginPage]
class LoginRoute extends _i10.PageRouteInfo<void> {
  const LoginRoute({List<_i10.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i4.MainTabView]
class MainTabView extends _i10.PageRouteInfo<void> {
  const MainTabView({List<_i10.PageRouteInfo>? children})
      : super(
          MainTabView.name,
          initialChildren: children,
        );

  static const String name = 'MainTabView';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i5.OnBoarding]
class OnBoarding extends _i10.PageRouteInfo<OnBoardingArgs> {
  OnBoarding({
    _i11.Key? key,
    List<_i10.PageRouteInfo>? children,
  }) : super(
          OnBoarding.name,
          args: OnBoardingArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'OnBoarding';

  static const _i10.PageInfo<OnBoardingArgs> page =
      _i10.PageInfo<OnBoardingArgs>(name);
}

class OnBoardingArgs {
  const OnBoardingArgs({this.key});

  final _i11.Key? key;

  @override
  String toString() {
    return 'OnBoardingArgs{key: $key}';
  }
}

/// generated route for
/// [_i6.RegisterPageView]
class RegisterRouteView extends _i10.PageRouteInfo<void> {
  const RegisterRouteView({List<_i10.PageRouteInfo>? children})
      : super(
          RegisterRouteView.name,
          initialChildren: children,
        );

  static const String name = 'RegisterRouteView';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i7.SplashPage]
class SplashRoute extends _i10.PageRouteInfo<void> {
  const SplashRoute({List<_i10.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i8.StartedView]
class StartedView extends _i10.PageRouteInfo<StartedViewArgs> {
  StartedView({
    _i11.Key? key,
    List<_i10.PageRouteInfo>? children,
  }) : super(
          StartedView.name,
          args: StartedViewArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'StartedView';

  static const _i10.PageInfo<StartedViewArgs> page =
      _i10.PageInfo<StartedViewArgs>(name);
}

class StartedViewArgs {
  const StartedViewArgs({this.key});

  final _i11.Key? key;

  @override
  String toString() {
    return 'StartedViewArgs{key: $key}';
  }
}

/// generated route for
/// [_i9.WhatYourGoalView]
class WhatYourGoalView extends _i10.PageRouteInfo<void> {
  const WhatYourGoalView({List<_i10.PageRouteInfo>? children})
      : super(
          WhatYourGoalView.name,
          initialChildren: children,
        );

  static const String name = 'WhatYourGoalView';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}
