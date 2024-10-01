import 'package:day_analyzer/models/note.dart';
import 'package:day_analyzer/providers/api_providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CreateNoteNotifier extends AutoDisposeAsyncNotifier<void> {
  @override
  build() {}

  Future<int> addNote(NoteModel note) async {
    return await ref.watch(apiServicesProvider).createNote(note);
  }
}

class UpdateNoteNotifier extends AutoDisposeAsyncNotifier<void> {
  @override
  build() {}

  Future<void> updateNote(NoteModel note) async {
    return await ref.watch(apiServicesProvider).updateNote(note);
  }
}

class DeleteNoteNotifier extends AutoDisposeAsyncNotifier<void> {
  @override
  build() {}

  Future<void> deleteNote(int id) async {
    return await ref.watch(apiServicesProvider).deleteNote(id);
  }
}

class GetNoteByIdNotifier extends AutoDisposeAsyncNotifier<void> {
  @override
  build() {}

  Future<NoteModel> getNote(int id) async {
    return await ref.watch(apiServicesProvider).getNote(id);
  }
}

class GetNotesByDayNotifier extends AutoDisposeAsyncNotifier<void> {
  @override
  build() {}

  Future<List<NoteModel>> getNotesByDay(String date) async {
    return await ref.watch(apiServicesProvider).getNoteByDay(date);
  }
}

class GetAllNotesNotifier extends AutoDisposeAsyncNotifier<void> {
  Future<List<NoteModel>>? allNotes;
  @override
  build() {
    getAllNotes();
  }

  Future<List<NoteModel>> getAllNotes() async {
    return await ref.watch(apiServicesProvider).getAllNotes();
  }
}
