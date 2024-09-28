import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

Widget customLeftPanel(BuildContext context) {
  DateTime today = DateTime.now();
  String strToday = DateFormat('dd/MM').format(today);
  String maxDay =
      DateFormat('dd/MM').format(today.add(const Duration(days: 7)));
  return SafeArea(
    child: Container(
      color: Theme.of(context).colorScheme.onInverseSurface,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_left,
                  //  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  '$strToday - $maxDay',
                  //style:
                  //    TextStyle(color: Theme.of(context).colorScheme.primary),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_right,
                  //color: Theme.of(context).colorScheme.primary,
                ),
              )
            ],
          ),
          TextButton(
            onPressed: () {},
            child: Text("Configurações"),
          ),
          TextButton(
            onPressed: () {},
            child: Text("Refresh"),
          ),
          TextButton(
            onPressed: () {
              context.go('/add');
            },
            child: Text("Novo Item"),
          )
        ],
      ),
    ),
  );
}
