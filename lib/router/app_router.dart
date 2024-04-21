import 'package:auto_route/auto_route.dart';
import 'package:riverpod_tour/router/app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: StartedView.page, initial: true),
        AutoRoute(
          page: OnBoarding.page,
        ),
        AutoRoute(
          page: SplashRoute.page,
        ),
        AutoRoute(page: LoginRoute.page),
        AutoRoute(page: RegisterRouteView.page),
        AutoRoute(page: HomeRoute.page),
        AutoRoute(page: CompleteProfileView.page),
        AutoRoute(page: WhatYourGoalView.page),
        AutoRoute(page: MainTabView.page),
      ];
}
