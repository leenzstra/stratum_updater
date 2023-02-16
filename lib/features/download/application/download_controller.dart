import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path/path.dart' as path;
import 'package:stratum_updater/features/configuration/infrastructure/config_repository.dart';
import 'package:stratum_updater/features/download/domain/entities/download_state.dart';
import 'package:stratum_updater/features/download/infrastructure/download_repository.dart';
import 'package:stratum_updater/features/download/infrastructure/local/installation_local_datasource.dart';
import 'package:stratum_updater/features/licensing/domain/entities/subject_data.dart';

class DownloadController extends StateNotifier<DownloadState> {
  DownloadController(
    this.repository,
    this.configRepo,
    this.installationLocalDatasource,
  ) : super(const DownloadState.init());
  final DownloadRepository repository;
  final ConfigRepository configRepo;
  final InstallationLocalDatasource installationLocalDatasource;

  Future<void> download(
    SubjectData subjectData,
  ) async {
    final r = await repository.download(
      path.join(configRepo.getConfig().installationPath, '${subjectData.alias}_${subjectData.sid}'),
      onReceiveProgress: (cur, total) {
        state = DownloadState.downloading(
          current: cur,
          total: total,
          subjectData: subjectData,
        );
      },
    );
    state = r.fold(
      DownloadState.error,
      (data) => const DownloadState.finished(),
    );
  }

  bool checkSubjectInstallation(SubjectData subject) {
    return installationLocalDatasource
        .isInstalled('${subject.alias}_${subject.sid}');
  }
}
