import 'package:day_analyzer/providers/api_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class ServerConf extends ConsumerWidget {
  const ServerConf({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    TextEditingController controllerHost = TextEditingController();
    TextEditingController controllerPort = TextEditingController();
    return Scaffold(
      body: SizedBox.fromSize(
        size: MediaQuery.of(context).size,
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(hintText: 'insert API server'),
              controller: controllerHost,
            ),
            TextField(
              decoration: const InputDecoration(hintText: 'insert API port'),
              controller: controllerPort,
            ),
            ElevatedButton(
              onPressed: () {
                context.go('/');
              },
              child: const Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () {
                ref.read(apiHost.notifier).state = controllerHost.text;
                ref.read(apiPorts.notifier).state =
                    int.parse(controllerPort.text);
                context.go('/');
              },
              child: const Text('OK'),
            )
          ],
        ),
      ),
    );
  }
}
