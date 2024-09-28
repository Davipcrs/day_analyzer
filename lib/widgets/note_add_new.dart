import 'package:day_analyzer/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mini_utils/mini_utils.dart';

class NoteAddNew extends StatefulWidget {
  const NoteAddNew({super.key});

  @override
  State<NoteAddNew> createState() => _NoteAddNewState();
}

class _NoteAddNewState extends State<NoteAddNew> {
  TextEditingController mainText = TextEditingController();
  TextEditingController secondaryMDText = TextEditingController();
  DateTime date = DateTime.now();

  @override
  void initState() {
    super.initState();
    mainText = TextEditingController();
    secondaryMDText = TextEditingController();
  }

  void setDate(newDate) {
    setState(() {
      date = newDate;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                Padding(
                  padding: const EdgeInsets.all(8.0),
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
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () async {
                      var newDate = await showDateTimePicker(context: context);
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
                          context.go('/');
                        },
                        child: const Text('Cancel'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text('Add'),
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
