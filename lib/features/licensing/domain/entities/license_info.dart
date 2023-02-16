// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stratum_updater/features/licensing/domain/entities/subject_data.dart';

part 'license_info.freezed.dart';
part 'license_info.g.dart';

@freezed
class LicenseInfo with _$LicenseInfo {
  const factory LicenseInfo({
    @JsonKey(name: 'key') required String key,
    @JsonKey(name: 'max_uses') required int maxUses,
    @JsonKey(name: 'contacts') required String contacts,
    @JsonKey(name: 'expiration') required DateTime expiration,
    @JsonKey(name: 'subjects_info') required List<SubjectData> subjects,
  }) = _LicenseInfo;

  /// Serialization
  factory LicenseInfo.fromJson(Map<String, dynamic> json) =>
      _$LicenseInfoFromJson(json);
}
