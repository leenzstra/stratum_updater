import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:stratum_updater/features/configuration/infrastructure/config_repository.dart';

class InstallationLocalDatasource {
  InstallationLocalDatasource(this.configRepo);

  final ConfigRepository configRepo;

  bool isInstalled(String subjectDirName, {String fileToCheck = 'Start.exe'}) {
    final installPath = configRepo.getConfig().installationPath;
    final path = p.join(installPath, subjectDirName, fileToCheck);
    print(path);
    return File(path).existsSync();
  }
}
