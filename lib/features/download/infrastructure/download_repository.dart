import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:stratum_updater/features/common/domain/failures/failure.dart';
import 'package:stratum_updater/features/licensing/domain/entities/subject_data.dart';

class DownloadRepository {
  DownloadRepository(
    this.client,
  );
  final Dio client;

  // Future<Either<Failure, String>> getDownloadUrl(SubjectData subject) async {
  //   final r = await client.post<Map<String, dynamic>>(
  //     'get_download_url',
  //     data: {'license_hash': licenseHash, 'machine_info_hash': machineId},
  //   );

  //   if (r.statusCode != 200) {
  //     return left(const Failure.badRequest());
  //   }
  //   final data = r.data!;
  //   if (data['result'] == false) {
  //     return left(
  //       Failure.unprocessableEntity(message: data['result'].toString()),
  //     );
  //   }

  //   return right(true);
  // }

  Future<Either<Failure, bool>> download(
    String url,
    String savePath, {
    void Function(int, int)? onReceiveProgress,
  }) async {
    try {
      await client.download(
        url,
        savePath,
        onReceiveProgress: onReceiveProgress,
      );
      return right(true);
    } catch (e) {
      return left(Failure.errorMessage(message: e.toString()));
    }
  }
}
