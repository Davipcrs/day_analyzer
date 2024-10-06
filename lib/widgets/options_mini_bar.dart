import 'package:day_analyzer/providers/note_providers.dart';
import 'package:day_analyzer/providers/system_state_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class OptionsMiniBar extends ConsumerWidget {
  const OptionsMiniBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        IconButton(
          onPressed: () {
            context.go('/conf');
          },
          icon: const Icon(Icons.settings),
        ),
        IconButton(
          onPressed: () {
            ref.invalidate(apiGetAllNotesProvider);
            ref.invalidate(apiGetNoteByIdProvider);
            ref.invalidate(apiGetNotesByDayProvider);
            ref.invalidate(notesAddedRecentlyProvider);
          },
          icon: const Icon(Icons.refresh_sharp),
        ),
        IconButton(
          onPressed: () {
            context.go('/add');
          },
          icon: const Icon(Icons.add_outlined),
        ),
      ],
    );
  }
}
