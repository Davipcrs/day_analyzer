import 'package:day_analyzer/models/note.dart';
import 'package:flutter/material.dart';

class NoteStatusBar extends StatefulWidget {
  const NoteStatusBar({super.key, required this.noteData});

  final NoteModel noteData;

  @override
  State<NoteStatusBar> createState() => _NoteStatusBarState();
}

class _NoteStatusBarState extends State<NoteStatusBar> {
  late NoteModel note;
  @override
  void initState() {
    super.initState();
    note = widget.noteData;
  }

  void changeCompleteStatusState(data) {
    // Call the bool_complete api endpoint
    setState(() {
      note.bool_complete = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            constraints: const BoxConstraints(
                minHeight: 20, minWidth: 20, maxWidth: 40, maxHeight: 40),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: note.bool_complete ? Colors.lightGreen : Colors.red,
            ),
          ),
          Switch.adaptive(
            value: note.bool_complete,
            onChanged: (value) {
              changeCompleteStatusState(value);
              // Create API to change the boolean
            },
          )
        ],
      ),
    );
  }
}
