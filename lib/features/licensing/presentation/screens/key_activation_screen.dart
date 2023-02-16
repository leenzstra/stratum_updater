import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:stratum_updater/features/licensing/providers.dart';
import 'package:stratum_updater/flavor.dart';

class KeyActivationScreen extends ConsumerWidget {
  const KeyActivationScreen({
    super.key,
  });

  /// route name
  static const routeName = 'activation_view';

  static const routePath = 'activation/view';

  static TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final licensesController = ref.watch(licensingViewProvider.notifier);
    return Scaffold(
      appBar: AppBar(
        title: Text('${F.title} $routeName'),
      ),
      body: Column(
        children: [
          TextField(
            controller: controller,
          ),
          ElevatedButton(
            onPressed: () => licensesController.activate(controller.text),
            child: const Text('Activate Key'),
          ),
          ElevatedButton(
              onPressed: () => context.pop(), child: const Text('Back'),)
        ],
      ),
    );
  }
}
