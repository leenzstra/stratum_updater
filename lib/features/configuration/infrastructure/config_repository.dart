import 'dart:io';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:stratum_updater/features/configuration/domain/entities/appconfig.dart';

class ConfigRepository {
  ConfigRepository(this.store) {
    init();
  }

  final SharedPreferences store;

  static String installPathKey = 'install_path';
  static String defaultInstallPath = Platform.environment['programfiles'] ?? '';
  static String installFolderName = 'Innotech';

  void init() {
    // TODO(aboba): init
  }

  AppConfig getConfig() {
    return AppConfig(installationPath: store.getString(installPathKey)!);
  }

  void setInstallPath(String path) {
    store.setString(installPathKey, path);
  }
}
