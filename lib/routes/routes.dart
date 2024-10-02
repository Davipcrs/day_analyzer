import 'package:day_analyzer/models/note.dart';
import 'package:day_analyzer/screens/main_window.dart';
import 'package:day_analyzer/widgets/note_add_new.dart';
import 'package:day_analyzer/widgets/note_edit.dart';
import 'package:go_router/go_router.dart';

GoRouter routes = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const MainWindow(),
    ),
    GoRoute(
      path: '/add',
      builder: (context, state) => const NoteAddNew(),
    ),
    GoRoute(
      path: '/edit',
      builder: (context, state) => NoteEdit(
        note: state.extra as NoteModel,
      ),
    )
  ],
);
