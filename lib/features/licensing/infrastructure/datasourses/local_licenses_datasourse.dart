import 'package:fpdart/fpdart.dart';
import 'package:isar/isar.dart';
import 'package:stratum_updater/features/common/domain/failures/failure.dart';
import 'package:stratum_updater/features/licensing/domain/entities/isar/isar_license.dart';
import 'package:stratum_updater/features/licensing/domain/entities/isar/isar_subject_data.dart';
import 'package:stratum_updater/features/licensing/domain/entities/license_info.dart';

class LocalLicensesDatasource {
  LocalLicensesDatasource(this.isar);

  final Isar isar;

  Future<Either<Failure, List<IsarLicense>>> getLicenses() async {
    try {
      return right(await isar.isarLicenses.where().findAll());
    } catch (e) {
      return left(Failure.errorMessage(message: e.toString()));
    }
  }

  bool isLicenseExpired(IsarLicense license) {
    final now = DateTime.now().toUtc();
    return license.expiration.isBefore(now);
  }

  Future<Either<Failure, bool>> addLicenseInfo(
    LicenseInfo info,
    String hash,
  ) async {
    final data = info.subjects
        .map(
          (subj) => IsarSubjectData(
            sid: subj.sid,
            name: subj.name,
            alias: subj.alias,
            classes: subj.classes,
          ),
        )
        .toList();
    try {
      await isar.writeTxn(() async {
        await isar.isarLicenses.put(
          IsarLicense(
            hash: hash,
            key: info.key,
            expiration: info.expiration,
            expired: false,
            subjects: data,
          ),
        );
      });

      return right(true);
    } catch (e) {
      return left(Failure.errorMessage(message: e.toString()));
    }
  }
}
