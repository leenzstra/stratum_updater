import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stratum_updater/features/configuration/domain/entities/appconfig.dart';
import 'package:stratum_updater/features/configuration/infrastructure/config_repository.dart';

class AppConfigNotifier extends StateNotifier<AppConfig> {
  AppConfigNotifier(this.configRepo) : super(configRepo.getConfig());
  final ConfigRepository configRepo;

  void _refresh() {
    state = configRepo.getConfig();
  }

  void setInstallDirectory(String path) {
    // TODO(aboba): validate path
    configRepo.setInstallPath(path);
    _refresh();
  }
}
