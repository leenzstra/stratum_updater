import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stratum_updater/features/licensing/domain/entities/isar/isar_license.dart';
import 'package:stratum_updater/features/licensing/domain/entities/license_info.dart';
import 'package:stratum_updater/features/licensing/domain/entities/subject_data.dart';
import 'package:stratum_updater/features/licensing/infrastructure/repositories/licensing_repository_interface.dart';

class LicensesViewController
    extends StateNotifier<AsyncValue<List<IsarLicense>>> {
  ///
  LicensesViewController(this.repository, this.machineId)
      : super(const AsyncValue.loading()) {
    refresh();
  }

  final LicensingRepositoryInterface repository;
  final String machineId;

  List<SubjectData> fetchSubjects() {
    return state.map(
      data: (data) {
        final subjectsMap = <String, SubjectData>{};
        final subjects = data.value.expand((e) => e.subjects);
        for (final s in subjects) {
          if (subjectsMap.containsKey(s.alias)) {
            subjectsMap[s.alias!] = subjectsMap[s.alias]!.copyWith(
              classes: List<String>.from(
                [...subjectsMap[s.alias]!.classes, ...s.classes!],
              ),
            );
          } else {
            subjectsMap.addAll({
              s.alias!: SubjectData(
                sid: s.sid!,
                classes: s.classes!,
                name: s.name!,
                alias: s.alias!,
              )
            });
          }
        }
        final values = <SubjectData>[];
        for (final kv in subjectsMap.entries) {
          values.add(
            kv.value.copyWith(classes: kv.value.classes.toSet().toList()),
          );
        }
        return values;
      },
      error: (error) {
        return <SubjectData>[];
      },
      loading: (loading) {
        return <SubjectData>[];
      },
    );
  }

  Future<void> refresh() async {
    final res = await repository.getLicensesLocal();
    state = res.fold(
      (l) => AsyncValue.error(l.toString(), StackTrace.current),
      AsyncValue.data,
    );
  }

  Future<LicenseInfo?> activate(String key) async {
    final r = await repository.activateLicense(
      key,
      machineId,
    );
    final hash = r.fold(
      (fail) {
        state = AsyncError(fail, StackTrace.current);
      },
      (hash) => hash,
    );

    if (hash == null) return null;

    final infoResult = await repository.getLicenseInfo(
      key,
      machineId,
    );
    final info = infoResult.fold(
      (fail) {
        state = AsyncError(fail, StackTrace.current);
      },
      (info) => info,
    );
    if (info == null) return null;

    final addResult = await repository.addLicenseLocal(info, hash);
    final added = addResult.fold(
      (fail) {
        state = AsyncError(fail, StackTrace.current);
      },
      (info) => info,
    );
    if (added == null) return null;

    await refresh();
    return info;
  }
}
