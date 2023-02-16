import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stratum_updater/config/providers.dart';
import 'package:stratum_updater/features/licensing/application/licensing_controller.dart';
import 'package:stratum_updater/features/licensing/domain/entities/isar/isar_license.dart';
import 'package:stratum_updater/features/licensing/infrastructure/datasourses/local_licenses_datasourse.dart';
import 'package:stratum_updater/features/licensing/infrastructure/repositories/licensing_repository.dart';

final licensingRepositoryProvider = Provider<LicensingRepository>((ref) {
  final client = ref.watch(httpClientProvider);
  final isar = ref.watch(isarProvider).asData!.value;
  return LicensingRepository(
    client: client,
    localDatasource: LocalLicensesDatasource(isar),
  );
});

final licensingViewProvider = StateNotifierProvider<LicensesViewController,
    AsyncValue<List<IsarLicense>>>((ref) {
  final repo = ref.watch(licensingRepositoryProvider);
  final deviceInfo = ref.watch(deviceInfoProvider).asData!.value;
  return LicensesViewController(repo, deviceInfo.deviceId);
});
