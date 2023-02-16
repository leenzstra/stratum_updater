

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stratum_updater/features/configuration/providers.dart';

class SettingsScreen extends ConsumerStatefulWidget {
  const SettingsScreen({super.key});

  static const routeName = 'install_config';

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends ConsumerState<SettingsScreen> {
  late final TextEditingController controller;

  @override
  void initState() {
    controller = TextEditingController(
      text: ref.read(configControllerProvider).installationPath,
    );
    super.initState();
  }

  Future<void> selectDialog() async {
    final selectedDirectory = await FilePicker.platform
        .getDirectoryPath(initialDirectory: controller.text);
    if (selectedDirectory != null) {
      controller.text = selectedDirectory;
    }
  }

  @override
  Widget build(BuildContext context) {
    final configController = ref.watch(configControllerProvider.notifier);
    final config = ref.watch(configControllerProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Конфигурация'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextField(
                  decoration:
                      const InputDecoration(label: Text('Путь установки')),
                  controller: controller,
                ),
              ),
              IconButton(
                onPressed: () async => selectDialog(),
                icon: const Icon(Icons.folder),
              )
            ],
          ),
          ElevatedButton(
            onPressed: () => 
                configController.setInstallDirectory(controller.text),
            child: const Text('Save'),
          ),
          Text(config.toString())
        ],
      ),
    );
  }
}
