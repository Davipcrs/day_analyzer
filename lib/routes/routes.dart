import 'package:day_analyzer/models/note.dart';
import 'package:day_analyzer/screens/main_window.dart';
import 'package:day_analyzer/widgets/note_add_new.dart';
import 'package:day_analyzer/widgets/note_edit.dart';
import 'package:day_analyzer/widgets/server_conf.dart';
import 'package:day_analyzer/widgets/splash.dart';
import 'package:go_router/go_router.dart';

GoRouter routes = GoRouter(
  initialLocation: '/splash',
  routes: [
    GoRoute(
      path: '/splash',
      builder: (context, state) => const Splash(),
    ),
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
    ),
    GoRoute(
      path: '/conf',
      builder: (context, state) => const ServerConf(),
    ),
  ],
);
