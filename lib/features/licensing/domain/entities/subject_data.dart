// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'subject_data.freezed.dart';
part 'subject_data.g.dart';

@freezed
class SubjectData with _$SubjectData {
  const factory SubjectData({
    @JsonKey(name: 'sid') required int sid,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'alias') required String alias,
    @JsonKey(name: 'classes') required List<String> classes,
  }) = _SubjectData;

  /// Serialization
  factory SubjectData.fromJson(Map<String, dynamic> json) =>
      _$SubjectDataFromJson(json);
}
