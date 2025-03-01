// ignore_for_file: unused_local_variable

import 'package:day_analyzer/models/note.dart';
import 'package:day_analyzer/providers/note_providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

//final startWeekProvider = StateProvider((ref) => DateTime(DateTime.now().year,
//    DateTime.now().month, DateTime.now().day - (DateTime.now().weekday) % 7));

final startWeekProvider =
    NotifierProvider<_SetStartWeekNotifier, void>(_SetStartWeekNotifier.new);

class _SetStartWeekNotifier extends Notifier<void> {
  @override
  build() {}

  DateTime setWeekStart(DateTime today) {
    return DateTime(today.year, today.month, today.day - (today.weekday) % 7);
  }
}

final staticWeekStartDayProvider = StateProvider(
  (ref) => ref.watch(startWeekProvider.notifier).setWeekStart(
        DateTime.now(),
      ),
);

final notesByWeekStartDayProvider = Provider(
  (ref) {
    AsyncValue notes = ref.watch(apiGetAllNotesProvider);
    List<NoteModel> recentAdded = ref.watch(notesAddedRecentlyProvider);
    // AsyncValue notes = ref.watch(allNotesProvider);

    return notes.whenData(
      (allNotes) {
        var weekStart = ref.watch(staticWeekStartDayProvider);
        Map<int, List<NoteModel>> notesByDayMap = {};
        for (var index = 0; index < 7; index = index + 1) {
          List<NoteModel> auxiliar = List.empty(growable: true);
          notesByDayMap[index] = auxiliar;
          if (recentAdded.isNotEmpty) {
            for (var recentAddedIndex = 0;
                recentAddedIndex < recentAdded.length;
                recentAddedIndex = recentAddedIndex + 1) {
              var auxiliarCompare =
                  recentAdded[recentAddedIndex].date!.difference(
                        weekStart.add(
                          Duration(days: index),
                        ),
                      );
              if (auxiliarCompare < const Duration(days: 1) &&
                  auxiliarCompare > const Duration(days: 0)) {
                notesByDayMap[index]!.add(recentAdded[recentAddedIndex]);
              }
            }
          }
          for (var allNoteIndex = 0;
              allNoteIndex < allNotes.length;
              allNoteIndex = allNoteIndex + 1) {
            var auxiliarCompare = allNotes[allNoteIndex].date!.difference(
                  weekStart.add(
                    Duration(days: index),
                  ),
                );
            if (auxiliarCompare < const Duration(days: 1) &&
                auxiliarCompare > const Duration(days: 0)) {
              notesByDayMap[index]!.add(allNotes[allNoteIndex]);
            }
          }
        }
        //print(notesByDayMap);
        return notesByDayMap;
      },
    );
  },
);

final notesAddedRecentlyProvider = StateProvider(
  (ref) {
    List<NoteModel> recent = List.empty(growable: true);
    return recent;
  },
);

final isEditReadOnly = StateProvider((ref) => true);
