// custom app bar

import 'package:flutter/material.dart';

AppBar customAppBar(BuildContext context) {
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
              "date",
              style: TextStyle(color: Theme.of(context).colorScheme.primary),
            )),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_right,
              color: Theme.of(context).colorScheme.primary,
            ))
      ],
    ),
    centerTitle: true,
  );
}
