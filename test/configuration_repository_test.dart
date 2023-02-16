import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stratum_updater/features/configuration/infrastructure/config_repository.dart';

void main() {
  group(ConfigRepository, () {
    group('setInstallPath', () {
      test('no value in store', () async {
        SharedPreferences.setMockInitialValues({});

        final store = await SharedPreferences.getInstance();

        final configRepo = ConfigRepository(store);

        final expectInstallPath = Platform.environment['programfiles']!;
        final actualInstallPath = configRepo.getConfig().installationPath;

        expect(expectInstallPath, actualInstallPath);
      });
    });
  });
}
