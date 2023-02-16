import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:stratum_updater/features/common/domain/failures/failure.dart';
import 'package:stratum_updater/features/licensing/domain/entities/isar/isar_license.dart';
import 'package:stratum_updater/features/licensing/domain/entities/license_info.dart';
import 'package:stratum_updater/features/licensing/infrastructure/datasourses/local_licenses_datasourse.dart';
import 'package:stratum_updater/features/licensing/infrastructure/repositories/licensing_repository_interface.dart';

class LicensingRepository implements LicensingRepositoryInterface {
  LicensingRepository({required this.client, required this.localDatasource});

  final Dio client;
  final LocalLicensesDatasource localDatasource;

  @override
  Future<Either<Failure, String>> activateLicense(
    String key,
    String machineId,
  ) async {
    final r = await client.post<Map<String, dynamic>>(
      'activate',
      data: {'key': key, 'machine_info_hash': machineId},
    );
    if (r.statusCode != 200) {
      return left(const Failure.badRequest());
    }
    final data = r.data!;
    if (data['result'] == false) {
      return left(
        Failure.unprocessableEntity(message: data['result'].toString()),
      );
    }

    return right(data['data'].toString());
  }

  @override
  Future<Either<Failure, LicenseInfo>> getLicenseInfo(
    String key,
    String machineId,
  ) async {
    final r = await client.post<Map<String, dynamic>>(
      'info',
      data: {'key': key, 'machine_info_hash': machineId},
    );

    if (r.statusCode != 200) {
      return left(const Failure.badRequest());
    }
    final data = r.data!;
    if (data['result'] == false) {
      return left(
        Failure.unprocessableEntity(message: data['result'].toString()),
      );
    }

    return right(LicenseInfo.fromJson(data['data'] as Map<String, dynamic>));
  }

  @override
  Future<Either<Failure, bool>> verifyLicense(
    String licenseHash,
    String machineId,
  ) async {
    final r = await client.post<Map<String, dynamic>>(
      'verify',
      data: {'license_hash': licenseHash, 'machine_info_hash': machineId},
    );

    if (r.statusCode != 200) {
      return left(const Failure.badRequest());
    }
    final data = r.data!;
    if (data['result'] == false) {
      return left(
        Failure.unprocessableEntity(message: data['result'].toString()),
      );
    }

    return right(true);
  }

  @override
  Future<Either<Failure, bool>> addLicenseLocal(LicenseInfo info, String hash) {
    return localDatasource.addLicenseInfo(info, hash);
  }

  @override
  Future<Either<Failure, List<IsarLicense>>> getLicensesLocal() {
    return localDatasource.getLicenses();
  }
}
