import 'package:flutter/material.dart';

PreferredSizeWidget customAppBar({
  required context,
  required String tittle,
}) {
  return AppBar(
    leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(Icons.arrow_left)),
    title: Text(
      tittle,
      style: TextStyle(fontWeight: FontWeight.w500),
    ),
    centerTitle: true,
  );
}
