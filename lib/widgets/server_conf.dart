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
    controllerHost.text = ref.watch(apiHost);
    controllerPort.text = ref.watch(apiPorts).toString();
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Theme.of(context).colorScheme.surfaceContainer,
            ),
            width: MediaQuery.of(context).size.width * 0.8,
            height: MediaQuery.of(context).size.height * 0.8,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Insira o IP do Servidor'),
                        controller: controllerHost,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Insira a Porta do Servidor'),
                        controller: controllerPort,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: () {
                          context.go('/');
                        },
                        child: const Text('Cancel'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: () {
                          saveServerIp(
                            controllerHost.text,
                            int.parse(controllerPort.text),
                          );
                          ref.read(apiHost.notifier).state =
                              controllerHost.text;
                          ref.read(apiPorts.notifier).state =
                              int.parse(controllerPort.text);

                          context.go('/');
                        },
                        child: const Text('OK'),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
