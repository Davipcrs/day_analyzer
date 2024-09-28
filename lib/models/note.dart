// ignore_for_file: non_constant_identifier_names
import 'package:day_analyzer/api/generated/note.pb.dart';

class NoteModel {
  late int? id_note;
  late String str_text;
  late String str_md_text;
  late DateTime? date;
  late bool bool_complete;

  void create(
      {required id_note,
      required str_text,
      required str_md_text,
      date,
      required bool_complete}) {
    this.id_note = id_note;
    this.str_text = str_text;
    this.str_md_text = str_md_text;
    if (date == null) {
      this.date = DateTime.now();
    } else {
      this.date = date;
    }

    this.bool_complete = bool_complete;
  }

  void convertToModel(Note note) {
    DateTime? auxDate = DateTime.tryParse(note.strDate);

    create(
        id_note: note.idNote,
        str_text: note.strText,
        str_md_text: note.strMdText,
        bool_complete: note.boolCompleted,
        date: auxDate);
  }

  Note convertToGrpc() {
    String str_date = date!.toIso8601String();
    return Note(
        idNote: id_note,
        strText: str_text,
        strMdText: str_md_text,
        strDate: str_date,
        boolCompleted: bool_complete);
  }

  CreateNoteRequest convertToAdd() {
    String str_date = date!.toIso8601String();

    return CreateNoteRequest(
        strText: str_text,
        strMdText: str_md_text,
        strDate: str_date,
        boolCompleted: bool_complete);
  }
}
