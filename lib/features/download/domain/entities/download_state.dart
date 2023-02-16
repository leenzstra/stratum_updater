import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stratum_updater/features/licensing/domain/entities/subject_data.dart';

part 'download_state.freezed.dart';

@freezed
class DownloadState with _$DownloadState {
  // Added constructor
  const factory DownloadState.downloading(
      {required int current,
      required int total,
      required SubjectData subjectData,}) = Downloading;
  const factory DownloadState.init() = Init;
  const factory DownloadState.finished() = Finished;
  const factory DownloadState.error(Object error) = Error;
}
