
import 'package:flutter/material.dart';
import 'package:stratum_updater/config/router.dart';
import 'package:stratum_updater/config/theme.dart';
import 'package:stratum_updater/flavor.dart';

/// Main example app class
class App extends StatelessWidget {
  /// Default constructor for Example app
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      
      title: F.title,
      theme: AppTheme(Brightness.light).themeData,
      darkTheme: AppTheme(Brightness.dark).themeData,
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
      routeInformationProvider: router.routeInformationProvider,
    );
  }
}
