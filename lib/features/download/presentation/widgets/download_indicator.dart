import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stratum_updater/features/download/application/download_controller.dart';
import 'package:stratum_updater/features/download/domain/entities/download_state.dart';
import 'package:stratum_updater/features/download/providers.dart';
import 'package:stratum_updater/features/licensing/domain/entities/subject_data.dart';

class CardDownloadIndicator extends ConsumerWidget {
  const CardDownloadIndicator(this.subjectData, {super.key});

  final SubjectData subjectData;

  Widget buildInstalled(
    BuildContext context,
    WidgetRef ref,
  ) {
    return Column(
      children: const [
        LinearProgressIndicator(
          value: 1,
        ),
        Divider(),
        Icon(Icons.check)
      ],
    );
  }

  Widget buildNotInstalled(
      BuildContext context, WidgetRef ref, DownloadController c) {
    return Column(
      children: [
        const LinearProgressIndicator(
          value: 0,
        ),
        const Divider(),
        IconButton(
          onPressed: () {
            c.download(
              'http://212.183.159.230/100MB.zip',
              '200MB.zip',
              subjectData,
            );
          },
          icon: const Icon(Icons.download),
        )
      ],
    );
  }
  

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final downloadController = ref.watch(downloadControllerProvider.notifier);
    final downloadState = ref.watch(downloadControllerProvider);
    return downloadState.when(
      downloading: (current, total, subject) {
        if (subject.sid == subjectData.sid) {
          return Column(
            children: [
              Expanded(
                child: LinearProgressIndicator(
                  value: current / total,
                ),
              ),
              const Divider(),
              IconButton(
                onPressed: () {
                  // TODO(aboba): cancel token
                },
                icon: const Icon(Icons.cancel),
              )
            ],
          );
        } else {
          return const SizedBox();
        }
      },
      init: () {
        return downloadController.checkSubjectInstallation(subjectData)
            ? buildInstalled(
                context,
                ref,
              )
            : buildNotInstalled(context, ref, downloadController);
      },
      error: (error) => Text(error.toString()),
      finished: () {
        return downloadController.checkSubjectInstallation(subjectData)
            ? buildInstalled(
                context,
                ref,
              )
            : buildNotInstalled(context, ref, downloadController);
      },
    );
  }
}
