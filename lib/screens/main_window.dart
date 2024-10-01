//main window
// contain a responsive view for the day item widget
import 'package:day_analyzer/screens/note_main_window.dart';
import 'package:day_analyzer/widgets/app_bar.dart';
import 'package:day_analyzer/widgets/left_panel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MainWindow extends ConsumerWidget {
  const MainWindow({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    dynamic appBar;
    dynamic body = const SafeArea(child: NoteMainWindow());
    if (MediaQuery.of(context).size.width < 480) {
      appBar = customAppBar(context);
    } else {
      body = Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: 195,
            height: double.infinity,
            child: CustomLeftPanel(),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 4.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width - 199,
              child: const NoteMainWindow(),
            ),
          ),
        ],
      );
    }
    return Scaffold(
      body: body,
      appBar: appBar,
    );
  }
}
