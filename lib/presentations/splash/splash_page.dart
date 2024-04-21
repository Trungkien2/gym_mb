import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tour/presentations/splash/splash_viewmodel.dart';
import 'package:riverpod_tour/router/app_router.gr.dart';

@RoutePage()
class SplashPage extends ConsumerWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(splashViewModelProvider, (previous, next) {
      next.when(
          data: (data) {
            if (data == 0) {
              context.replaceRoute(const LoginRoute());
            }
          },
          error: (error, stackTrace) => log(error.toString()),
          loading: () {});
    });
    return const Scaffold(
      body: Center(child: CircularProgressIndicator()),
    );
  }
}
