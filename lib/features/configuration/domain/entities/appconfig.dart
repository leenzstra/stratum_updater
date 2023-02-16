
import 'package:freezed_annotation/freezed_annotation.dart';

part 'appconfig.freezed.dart';


@freezed
class AppConfig with _$AppConfig {
  const factory AppConfig({required String installationPath}) = _AppConfig;

}
