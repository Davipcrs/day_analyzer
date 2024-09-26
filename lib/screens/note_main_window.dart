import 'package:day_analyzer/models/note.dart';
import 'package:day_analyzer/widgets/day_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NoteMainWindow extends ConsumerWidget {
  const NoteMainWindow({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    /*
    return CustomScrollView(
      slivers: [
        SliverGrid(
            delegate: SliverChildBuilderDelegate(
              childCount: 2,
              (context, index) {
                return Container(
                  color: Theme.of(context).colorScheme.onInverseSurface,
                  child: const DayItem(
                    noteItems: [],
                  ),
                );
              },
            ),
            gridDelegate: Gridelaget
            )

      ],
    );
    */
    // use a dict to pass
    //{
    // day: "20/02/2023"{
    //                  list
    //                  },
    // day: "21/02/2023"{
    //                  list
    //                  },
    //
    //}
    List<NoteModel> noteItems = [NoteModel(), NoteModel(), NoteModel()];
    if (MediaQuery.of(context).size.width < 480) {
      return ListView.builder(
        itemCount: 7,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(
                top: 8.0, right: 24.0, left: 24.0, bottom: 8.0),
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.onInverseSurface,
                borderRadius: BorderRadius.circular(12),
              ),
              child: DayItem(
                noteItems: noteItems,
                date: "date",
              ),
            ),
          );
        },
      );
    } else {
      return CustomScrollView(
        slivers: [
          SliverGrid(
            delegate: SliverChildBuilderDelegate(
              childCount: 7,
              (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(
                      top: 8.0, right: 8.0, left: 8.0, bottom: 8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.onInverseSurface,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: DayItem(
                      noteItems: noteItems,
                      date: "date",
                    ),
                  ),
                );
              },
            ),
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 360,
              mainAxisExtent: 600,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
            ),
          )
        ],
      );
    }
  }
}
