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
    List<NoteModel> noteItems = [NoteModel()];
    return ListView.builder(
      itemCount: 3,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
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
  }
}
