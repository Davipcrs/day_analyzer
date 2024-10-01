// custom app bar

import 'package:day_analyzer/providers/system_state_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

AppBar customAppBar(BuildContext context, WidgetRef ref) {
  DateTime today = ref.watch(staticWeekStartDayProvider);

  return AppBar(
    elevation: 0,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            onPressed: () {
              today = today.add(const Duration(days: -7));
              ref.invalidate(startWeekProvider);
              ref.read(staticWeekStartDayProvider.notifier).state =
                  ref.watch(startWeekProvider.notifier).setWeekStart(today);
              ref.invalidate(notesByWeekStartDayProvider);
            },
            icon: Icon(
              Icons.arrow_left,
              color: Theme.of(context).colorScheme.primary,
            )),
        TextButton(
            onPressed: () {},
            child: Text(
              '${ref.watch(staticWeekStartDayProvider).toIso8601String().split('T')[0]} - ${ref.watch(staticWeekStartDayProvider).add(const Duration(days: 7)).toIso8601String().split('T')[0]}',
              style: TextStyle(color: Theme.of(context).colorScheme.primary),
            )),
        IconButton(
          onPressed: () {
            today = today.add(const Duration(days: 7));
            ref.invalidate(startWeekProvider);
            ref.read(staticWeekStartDayProvider.notifier).state =
                ref.watch(startWeekProvider.notifier).setWeekStart(today);
            ref.invalidate(notesByWeekStartDayProvider);
          },
          icon: Icon(
            Icons.arrow_right,
            color: Theme.of(context).colorScheme.primary,
          ),
        )
      ],
    ),
    centerTitle: true,
  );
}
