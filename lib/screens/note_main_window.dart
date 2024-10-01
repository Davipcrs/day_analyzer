import 'package:day_analyzer/providers/system_state_providers.dart';
import 'package:day_analyzer/widgets/day_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NoteMainWindow extends ConsumerStatefulWidget {
  const NoteMainWindow({super.key});

  @override
  ConsumerState<NoteMainWindow> createState() => _NoteMainWindowState();
}

class _NoteMainWindowState extends ConsumerState<NoteMainWindow> {
  late DateTime startWeek;
  late AsyncValue notes;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  setData() async {
    notes = ref.watch(notesByWeekStartDayProvider);
  }

  @override
  Widget build(BuildContext context) {
    startWeek = ref.watch(staticWeekStartDayProvider);
    setData();
    /*
    return CustomScrollView(
      slivers: [
        SliverGrid(
            delegate: SliverChildBuilderDelegate(
              childCount: 2,
              (context, index) {
                return Container(
                  color: Theme.of(context).colorScheme.onInverseSurface,
                  child: const DayItem(
                    noteItems: [],
                  ),
                );
              },
            ),
            gridDelegate: Gridelaget
            )

      ],
    );
    */
    // use a dict to pass
    //{
    // day: "20/02/2023"{
    //                  list
    //                  },
    // day: "21/02/2023"{
    //                  list
    //                  },
    //
    //}

    if (MediaQuery.of(context).size.width < 480) {
      return notes.when(
          error: (err, stack) => Center(child: Text('Error $err')),
          loading: () => const Center(
                child: CircularProgressIndicator(),
              ),
          data: (noteMap) {
            return ListView.builder(
              itemCount: 7,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(
                      top: 8.0, right: 24.0, left: 24.0, bottom: 8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.onInverseSurface,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: DayItem(
                      noteItems: noteMap[index]!,
                      date: startWeek.add(Duration(days: index)),
                    ),
                  ),
                );
              },
            );
          });
    } else {
      return notes.when(
        error: (err, stack) => Center(child: Text('Error $err')),
        loading: () => const Center(
          child: CircularProgressIndicator(),
        ),
        data: (noteMap) {
          return CustomScrollView(
            slivers: [
              SliverGrid(
                delegate: SliverChildBuilderDelegate(
                  childCount: 7,
                  (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(
                          top: 8.0, right: 8.0, left: 8.0, bottom: 8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.onInverseSurface,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: DayItem(
                          noteItems: noteMap[index]!,
                          date: startWeek.add(Duration(days: index)),
                        ),
                      ),
                    );
                  },
                ),
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 360,
                  mainAxisExtent: 600,
                  mainAxisSpacing: 10.0,
                  crossAxisSpacing: 10.0,
                ),
              )
            ],
          );
        },
      );
    }
  }
}
