// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_base.freezed.dart';
part 'response_base.g.dart';

@freezed
class ResponseBase with _$ResponseBase {
  const factory ResponseBase({
    @JsonKey(name: 'message') required String message,
    @JsonKey(name: 'result') required bool result,
    @JsonKey(name: 'data') required Object data,
  }) = _ResponseBase;

  /// Serialization
  factory ResponseBase.fromJson(Map<String, dynamic> json) =>
      _$ResponseBaseFromJson(json);
}
