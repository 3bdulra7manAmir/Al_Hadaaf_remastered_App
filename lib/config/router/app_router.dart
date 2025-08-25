import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../Core/widgets/circular_indicator.dart';

import '../../features/01_onboarding/presentation/screens/splash_view.dart';
import 'app_routes.dart';
import 'route_observer.dart';


abstract class AppRouter
{
  AppRouter._();
  static final navigatorState = GlobalKey<NavigatorState>(debugLabel: 'root');
  static String? currentRoute;
  static final router = GoRouter(
    navigatorKey: navigatorState,
    debugLogDiagnostics: kDebugMode,
    observers: [NavigatorObserverWithTracking(),],
    initialLocation: AppRoutes.splash,
    errorBuilder: (_, _) => const Scaffold(body: Center(child: CustomCircularIndicator()),),
    routes:
    [
      /// [ OnBoarding Feature ]
      // [Splash]
      GoRoute(
        path: AppRoutes.splash,
        name: AppRoutes.splash,
        builder: (_, _) => const Splash(),
      ),

      // StatefulShellRoute.indexedStack(
      //   builder: (_, __, navigationShell) => navigationShell,
      //   branches:
      //   [
      //     /// Home
      //     StatefulShellBranch(
      //       initialLocation: AppRoutes.home,
      //       routes: <RouteBase>
      //       [
      //         GoRoute(
      //           path: AppRoutes.home,
      //           name: AppRoutes.home,
      //           builder: (_, _) => const Home(),
      //           routes: []
      //         ),
      //       ],
      //     ),
      //   ],
      // ),
    ]
  );
}
