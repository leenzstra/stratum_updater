import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:stratum_updater/config/scroll_behaviour.dart';
import 'package:stratum_updater/features/configuration/presentation/screens/settings_screen.dart';
import 'package:stratum_updater/features/download/presentation/screens/download_project_screen.dart';
import 'package:stratum_updater/features/licensing/presentation/screens/key_activation_screen.dart';
import 'package:stratum_updater/features/licensing/presentation/widgets/subject_card.dart';
import 'package:stratum_updater/features/licensing/providers.dart';
import 'package:stratum_updater/flavor.dart';

class LicenseViewScreen extends ConsumerStatefulWidget {
  const LicenseViewScreen({super.key});

  /// route name
  static const routeName = 'license_view';

  ///
  static const routePath = 'license/view';

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _LicenseViewScreenState();
}

class _LicenseViewScreenState extends ConsumerState<LicenseViewScreen> {
  final ScrollController controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    final licenses = ref.watch(licensingViewProvider);
    final licenseController = ref.watch(licensingViewProvider.notifier);
    final subjects = licenseController.fetchSubjects();
    return Scaffold(
      appBar: AppBar(
        title: Text(F.title),
      ),
      body: licenses.when(
        data: (data) {
          return Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  context.pushNamed(KeyActivationScreen.routeName);
                },
                child: const Text('ActivateKeyView'),
              ),
              ElevatedButton(
                onPressed: () {
                  context.pushNamed(SettingsScreen.routeName);
                },
                child: const Text('Config'),
              ),
              ElevatedButton(
                onPressed: () {
                  context.pushNamed(DownloadScreen.routeName);
                },
                child: const Text('Download'),
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(data[index].key),
                  );
                },
              ),
              Flexible(
                fit: FlexFit.tight,
                child: ScrollConfiguration(
                  behavior: MouseScrollBehaviour(),
                  child: Scrollbar(
                    controller: controller,
                    thumbVisibility: true,
                    child: ListView.builder(
                      controller: controller,
                      scrollDirection: Axis.horizontal,
                      itemCount: subjects.length,
                      itemBuilder: (context, index) {
                        return SubjectCard(
                          subjectData: subjects[index],
                        );
                      },
                    ),
                  ),
                ),
              )
            ],
          );
        },
        loading: () {
          return const CircularProgressIndicator();
        },
        error: (error, stackTrace) {
          return Text(error.toString());
        },
      ),
    );
  }
}
