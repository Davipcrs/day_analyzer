import 'package:day_analyzer/providers/api_providers.dart';
import 'package:day_analyzer/providers/note_notifiers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final apiGetAllNotesProvider = FutureProvider(
  (ref) async {
    return await ref.watch(apiServicesProvider).getAllNotes();
  },
);

final apiCreateNoteProvider =
    AsyncNotifierProvider.autoDispose<CreateNoteNotifier, void>(
  CreateNoteNotifier.new,
);

final apiGetNoteByIdProvider =
    AsyncNotifierProvider.autoDispose<GetNoteByIdNotifier, void>(
  GetNoteByIdNotifier.new,
);

final apiGetNotesByDayProvider =
    AsyncNotifierProvider.autoDispose<GetNotesByDayNotifier, void>(
  GetNotesByDayNotifier.new,
);

final apiDeleteNoteProvider =
    AsyncNotifierProvider.autoDispose<DeleteNoteNotifier, void>(
  DeleteNoteNotifier.new,
);

final apiUpdateNoteProvider =
    AsyncNotifierProvider.autoDispose<UpdateNoteNotifier, void>(
  UpdateNoteNotifier.new,
);
