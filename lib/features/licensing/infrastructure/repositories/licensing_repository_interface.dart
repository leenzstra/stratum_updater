import 'package:fpdart/fpdart.dart';
import 'package:stratum_updater/features/common/domain/failures/failure.dart';
import 'package:stratum_updater/features/licensing/domain/entities/isar/isar_license.dart';
import 'package:stratum_updater/features/licensing/domain/entities/license_info.dart';

abstract class LicensingRepositoryInterface {
  Future<Either<Failure, String>> activateLicense(String key, String machineId);
  Future<Either<Failure, bool>> verifyLicense(
    String licenseHash,
    String machineId,
  );
  Future<Either<Failure, LicenseInfo>> getLicenseInfo(
    String key,
    String machineId,
  );
  Future<Either<Failure, bool>> addLicenseLocal(LicenseInfo info, String hash);
  Future<Either<Failure, List<IsarLicense>>> getLicensesLocal();
}
