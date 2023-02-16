import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:stratum_updater/features/configuration/presentation/screens/settings_screen.dart';
import 'package:stratum_updater/features/download/presentation/screens/download_project_screen.dart';
import 'package:stratum_updater/features/licensing/presentation/screens/key_activation_screen.dart';
import 'package:stratum_updater/features/licensing/presentation/screens/licenses_view_screen.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: LicenseViewScreen.routeName,
      builder: (context, state) => const LicenseViewScreen(),
    ),
    GoRoute(
      path: '/${KeyActivationScreen.routePath}',
      name: KeyActivationScreen.routeName,
      builder: (context, state) => const KeyActivationScreen(),
    ),
    GoRoute(
      path: '/${SettingsScreen.routeName}',
      name: SettingsScreen.routeName,
      builder: (context, state) => const SettingsScreen(),
    ),
    GoRoute(
      path: '/${DownloadScreen.routePath}',
      name: DownloadScreen.routeName,
      builder: (context, state) => const DownloadScreen(),
    ),
    // GoRoute(
    //   path: '/${AuthScreen.route}',
    //   name: AuthScreen.route,
    //   builder: (context, state) => const AuthScreen(),
    // ),
  ],
  observers: [
    routeObserver,
  ],
  // redirect: (state) {
  //   final loggedIn = authStateListenable.value;
  //   final goingToLogin = state.subloc.contains('/${AuthScreen.route}');

  //   if (!loggedIn && !goingToLogin) {
  //     return '/${AuthScreen.route}';
  //   }
  //   if (loggedIn && goingToLogin) return '/';

  //   return null;
  // },
  // refreshListenable: authStateListenable,
  debugLogDiagnostics: true,
  // errorBuilder: (context, state) =>
  //     ErrorScreen(message: context.tr.somethingWentWrong),
);

/// Route observer to use with RouteAware
final RouteObserver<ModalRoute<void>> routeObserver =
    RouteObserver<ModalRoute<void>>();
