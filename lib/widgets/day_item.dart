//A day item contains a list of note item and some more data
//a day item can be seached

import 'package:day_analyzer/models/note.dart';
import 'package:day_analyzer/widgets/note_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DayItem extends ConsumerStatefulWidget {
  const DayItem({super.key, required this.noteItems, required this.date});

  final List<NoteModel> noteItems;
  final DateTime date;

  @override
  ConsumerState<DayItem> createState() => _DayItemState();
}

class _DayItemState extends ConsumerState<DayItem> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // Add Day Text
      constraints: const BoxConstraints(
          maxHeight: (120 * 5.0) + 20, minHeight: 120 + 20),
      height: ((120 * widget.noteItems.length) + 20).toDouble(),
      child: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: Center(
                child: Text(widget.date.toIso8601String().split('T')[0])),
          ),
          SliverGrid(
            delegate: SliverChildBuilderDelegate(
              childCount: widget.noteItems.length,
              (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.surfaceContainer,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: NoteItem(noteData: widget.noteItems[index])),
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
