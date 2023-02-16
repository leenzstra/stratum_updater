import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stratum_updater/config/providers.dart';
import 'package:stratum_updater/features/configuration/application/config_controller.dart';
import 'package:stratum_updater/features/configuration/domain/entities/appconfig.dart';
import 'package:stratum_updater/features/configuration/infrastructure/config_repository.dart';

final configRepositoryProvider = Provider<ConfigRepository>((ref) {
  final store = ref.watch(sharedPrefencesProvider).value!;
  return ConfigRepository(store);
});

final configControllerProvider =
    StateNotifierProvider<AppConfigNotifier, AppConfig>((ref) {
  final repo = ref.watch(configRepositoryProvider);
  return AppConfigNotifier(repo);
});
