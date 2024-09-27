import 'package:day_analyzer/screens/note_main_window.dart';
import 'package:day_analyzer/widgets/app_bar.dart';
import 'package:day_analyzer/widgets/left_panel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    dynamic appBar;
    dynamic body = const SafeArea(child: NoteMainWindow());
    if (MediaQuery.of(context).size.width < 480) {
      appBar = customAppBar(context);
    } else {
      body = Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            child: customLeftPanel(context),
            width: 195,
            height: double.infinity,
          ),
          SizedBox(
            child: NoteMainWindow(),
            width: MediaQuery.of(context).size.width - 195,
          ),
        ],
      );
    }
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.lightBlue, brightness: Brightness.light),
        useMaterial3: true,
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.blue, brightness: Brightness.dark),
        useMaterial3: true,
        brightness: Brightness.dark,
      ),
      home: Scaffold(
        body: body,
        appBar: appBar,
      ),
    );
  }
}
