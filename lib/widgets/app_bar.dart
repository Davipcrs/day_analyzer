// custom app bar

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

AppBar customAppBar(BuildContext context) {
  DateTime today = DateTime.now();
  String strToday = DateFormat('dd/MM').format(today);
  String maxDay =
      DateFormat('dd/MM').format(today.add(const Duration(days: 7)));
  return AppBar(
    elevation: 0,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_left,
              color: Theme.of(context).colorScheme.primary,
            )),
        TextButton(
            onPressed: () {},
            child: Text(
              '$strToday - $maxDay',
              style: TextStyle(color: Theme.of(context).colorScheme.primary),
            )),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_right,
            color: Theme.of(context).colorScheme.primary,
          ),
        )
      ],
    ),
    centerTitle: true,
  );
}
