// This file contains a note list item
// defines a container that contains the data and the clickable area

import 'package:day_analyzer/models/note.dart';
import 'package:day_analyzer/widgets/note_status_bar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.noteData});

  final NoteModel noteData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onLongPress: () {
          context.go('/edit', extra: noteData);
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(noteData.str_text),
                Text(noteData.date.toString().split(" ")[1].split(".")[0]),
              ],
            ),
            NoteStatusBar(noteData: noteData),
          ],
        ),
      ),
    );
  }
}
