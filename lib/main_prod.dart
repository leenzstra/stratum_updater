import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stratum_updater/app.dart';
import 'package:stratum_updater/bootstrap.dart';
import 'package:stratum_updater/flavor.dart';

void main() async {
  F.appFlavor = Flavor.production;
  runApp(
    UncontrolledProviderScope(
      container: await bootstrap(),
      child: const App(),
    ),
  );
}
