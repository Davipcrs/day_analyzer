//A day item contains a list of note item and some more data
//a day item can be seached

import 'package:day_analyzer/models/note.dart';
import 'package:day_analyzer/widgets/note_item.dart';
import 'package:flutter/material.dart';

class DayItem extends StatelessWidget {
  const DayItem({super.key, required this.noteItems, required this.date});

  final List<NoteModel> noteItems;
  final String date;

  @override
  Widget build(BuildContext context) {
    noteItems[0].create(
        id_note: 1,
        str_text: "oafbefjoawbdo",
        str_md_text: "",
        bool_complete: false);
    noteItems[1].create(
        id_note: 1,
        str_text: "ABAoafbefjoawbdo",
        str_md_text: "",
        bool_complete: false);
    noteItems[2].create(
        id_note: 1,
        str_text: "ABOoafbefjoawbdo",
        str_md_text: "",
        bool_complete: false);
    return Container(
      // Add Day Text
      constraints: const BoxConstraints(maxHeight: 120 * 5.0, minHeight: 120),
      height: (120 * noteItems.length).toDouble(),
      child: CustomScrollView(
        slivers: [
          SliverGrid(
            delegate: SliverChildBuilderDelegate(
              childCount: 3,
              (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.surfaceContainer,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: NoteItem(noteData: noteItems[index])),
                );
              },
            ),
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 480,
              mainAxisExtent: 120,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
            ),
          )
        ],
      ),
    );
  }
}
