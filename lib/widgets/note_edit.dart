import 'package:day_analyzer/models/note.dart';
import 'package:day_analyzer/providers/note_providers.dart';
import 'package:day_analyzer/providers/system_state_providers.dart';
import 'package:day_analyzer/widgets/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:mini_utils/mini_utils.dart';

class NoteEdit extends ConsumerStatefulWidget {
  const NoteEdit({super.key, required this.note});

  final NoteModel note;
  @override
  ConsumerState<NoteEdit> createState() => _NoteEditState();
}

class _NoteEditState extends ConsumerState<NoteEdit> {
  TextEditingController mainText = TextEditingController();

  TextEditingController secondaryMDText = TextEditingController();

  late DateTime date;

  @override
  void initState() {
    super.initState();
    mainText = TextEditingController();
    secondaryMDText = TextEditingController();
    mainText.text = widget.note.str_text;
    secondaryMDText.text = widget.note.str_md_text;
    date = widget.note.date!;
  }

  void setDate(newDate) {
    setState(() {
      date = newDate;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customEditAppBar(context, ref),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Theme.of(context).colorScheme.surfaceContainer,
            ),
            width: MediaQuery.of(context).size.width * 0.8,
            height: MediaQuery.of(context).size.height * 0.8,
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Adicionar Nota'),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, left: 8.0, right: 8),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: TextField(
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(), hintText: 'Nome'),
                      controller: mainText,
                      maxLength: 300,
                      readOnly: ref.watch(isEditReadOnly),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () async {
                      var newDate = await showDateTimePicker(
                          context: context, initialDate: date);
                      setDate(newDate);
                    },
                    child: Text(
                      date.toString().split('.')[0],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.7,
                    height: MediaQuery.of(context).size.height * 0.4,
                    child: TextField(
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Descrição da nota'),
                      maxLines: null,
                      minLines: 10,
                      keyboardType: TextInputType.multiline,
                      controller: secondaryMDText,
                      readOnly: ref.watch(isEditReadOnly),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: () {
                          ref.read(isEditReadOnly.notifier).state = true;
                          context.go('/');
                        },
                        child: const Text('Cancel'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: () {
                          NoteModel model = NoteModel();
                          model.create(
                              id_note: widget.note.id_note!,
                              str_text: mainText.text,
                              str_md_text: secondaryMDText.text,
                              bool_complete: widget.note.bool_complete,
                              date: date);

                          ref
                              .read(apiUpdateNoteProvider.notifier)
                              .updateNote(model);

                          ref.read(isEditReadOnly.notifier).state = true;

                          context.go('/');
                        },
                        child: const Text('Confirm Edit'),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
