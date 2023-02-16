import 'package:isar/isar.dart';
import 'package:stratum_updater/features/licensing/domain/entities/isar/isar_subject_data.dart';

part 'isar_license.g.dart';

@collection
class IsarLicense {
  IsarLicense({
    required this.hash,
    required this.key,
    required this.expiration,
    required this.expired,
    required this.subjects,
  }) : id = Isar.autoIncrement;
  Id id = Isar.autoIncrement;

  final String hash;

  @Index(unique: true)
  final String key;

  final DateTime expiration;

  final bool expired;

  final List<IsarSubjectData> subjects;
}
