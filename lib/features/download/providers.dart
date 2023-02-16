import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stratum_updater/config/providers.dart';
import 'package:stratum_updater/features/configuration/providers.dart';
import 'package:stratum_updater/features/download/application/download_controller.dart';
import 'package:stratum_updater/features/download/domain/entities/download_state.dart';
import 'package:stratum_updater/features/download/infrastructure/download_repository.dart';
import 'package:stratum_updater/features/download/infrastructure/local/installation_local_datasource.dart';

final downloadRepositoryProvider = Provider<DownloadRepository>((ref) {
  final client = ref.watch(httpClientProvider);
  return DownloadRepository(client);
});

final downloadControllerProvider =
    StateNotifierProvider<DownloadController, DownloadState>((ref) {
  final repository = ref.watch(downloadRepositoryProvider);
  final configRepository = ref.watch(configRepositoryProvider);
  return DownloadController(
    repository,
    configRepository,
    InstallationLocalDatasource(configRepository),
  );
});
