import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stratum_updater/features/download/providers.dart';

class DownloadScreen extends ConsumerWidget {
  const DownloadScreen({super.key});

  static const routeName = 'download';

  static const routePath = 'download';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final downloadController = ref.
    // watch(downloadControllerProvider.notifier);
    final downloadState = ref.watch(downloadControllerProvider);
    return Scaffold(
      appBar: AppBar(),
      body: downloadState.when(
        downloading: (current, total, subject) {
          return Column(
            children: [
              LinearProgressIndicator(
                value: current / total,
              )
            ],
          );
        },
        error: (error) {
          return Text(error.toString());
        },
        init: () {
          return const Text('Нет загрузок');
        },
        finished: () {
          return const Text('Загрузка завершена');
        },
      ),
    );
  }
}
