import 'package:device_info_plus/device_info_plus.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:isar/isar.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stratum_updater/features/licensing/domain/entities/isar/isar_license.dart';

///
final isarProvider = FutureProvider(
  (ref) => Isar.open([IsarLicenseSchema]),
);

final deviceInfoProvider =
    FutureProvider((ref) => DeviceInfoPlugin().windowsInfo);

final sharedPrefencesProvider =
    FutureProvider((ref) => SharedPreferences.getInstance());

final httpClientProvider = Provider(
  (ref) => Dio(BaseOptions(baseUrl: 'http://localhost:3000/api/license/')),
);

/// Triggered from bootstrap() to complete futures
Future<void> initializeProviders(ProviderContainer container) async {
  // GoRouter.setUrlPathStrategy(UrlPathStrategy.path);

  /// Core
  await container.read(isarProvider.future);
  await container.read(deviceInfoProvider.future);
  await container.read(sharedPrefencesProvider.future);
  container.read(httpClientProvider);

  /// Auth
  // container.read(authControllerProvider);
}
