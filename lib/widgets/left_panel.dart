import 'package:day_analyzer/providers/note_providers.dart';
import 'package:day_analyzer/providers/system_state_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

class CustomLeftPanel extends ConsumerStatefulWidget {
  const CustomLeftPanel({super.key});

  @override
  ConsumerState<CustomLeftPanel> createState() => _CustomLeftPanelState();
}

class _CustomLeftPanelState extends ConsumerState<CustomLeftPanel> {
  DateTime today = DateTime.now();
  DateFormat format = DateFormat('dd/MM');
  late DateTime startWeek;

  onChangeDate(String aux) {
    setState(() {
      if (aux == 'left') {
        today = today.add(const Duration(days: -7));
        ref.invalidate(startWeekProvider);
        ref.read(staticWeekStartDayProvider.notifier).state =
            ref.watch(startWeekProvider.notifier).setWeekStart(today);
        ref.invalidate(notesByWeekStartDayProvider);
      } else {
        today = today.add(const Duration(days: 7));
        ref.invalidate(startWeekProvider);
        ref.read(staticWeekStartDayProvider.notifier).state =
            ref.watch(startWeekProvider.notifier).setWeekStart(today);
        ref.invalidate(notesByWeekStartDayProvider);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    startWeek = ref.watch(startWeekProvider.notifier).setWeekStart(today);
    String strToday = format.format(startWeek);
    String maxDay = format.format(startWeek.add(const Duration(days: 7)));
    return SafeArea(
      child: Container(
        color: Theme.of(context).colorScheme.onInverseSurface,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    onChangeDate('left');
                  },
                  icon: const Icon(
                    Icons.arrow_left,

                    //  color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    '$strToday - $maxDay',
                    //style:
                    //    TextStyle(color: Theme.of(context).colorScheme.primary),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    onChangeDate('right');
                  },
                  icon: const Icon(
                    Icons.arrow_right,
                    //color: Theme.of(context).colorScheme.primary,
                  ),
                )
              ],
            ),
            TextButton(
              onPressed: () {
                context.go('/conf');
              },
              child: const Text("Configurações"),
            ),
            TextButton(
              onPressed: () {
                ref.invalidate(apiGetAllNotesProvider);
                ref.invalidate(apiGetNoteByIdProvider);
                ref.invalidate(apiGetNotesByDayProvider);
              },
              child: const Text("Refresh"),
            ),
            TextButton(
              onPressed: () {
                context.go('/add');
              },
              child: const Text("Novo Item"),
            )
          ],
        ),
      ),
    );
  }
}
/*
Widget customLeftPanel(BuildContext context, WidgetRef ref) {
  DateTime today = DateTime.now();
  DateTime startWeek =
      ref.watch(startWeekProvider.notifier).setWeekStart(today);
  DateFormat format = DateFormat('dd/MM');
  String strToday = format.format(startWeek);
  String maxDay = format.format(startWeek.add(const Duration(days: 7)));
  return SafeArea(
    child: Container(
      color: Theme.of(context).colorScheme.onInverseSurface,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  ref.invalidate(startWeekProvider);
                  today = today.add(const Duration(days: -7));
                },
                icon: const Icon(
                  Icons.arrow_left,

                  //  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  '$strToday - $maxDay',
                  //style:
                  //    TextStyle(color: Theme.of(context).colorScheme.primary),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_right,
                  //color: Theme.of(context).colorScheme.primary,
                ),
              )
            ],
          ),
          TextButton(
            onPressed: () {},
            child: const Text("Configurações"),
          ),
          TextButton(
            onPressed: () {},
            child: const Text("Refresh"),
          ),
          TextButton(
            onPressed: () {
              context.go('/add');
            },
            child: const Text("Novo Item"),
          )
        ],
      ),
    ),
  );
}
*/