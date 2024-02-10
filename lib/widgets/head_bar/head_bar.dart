import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
final AppBar HeadBar = AppBar(
  title: const Text(
    'Sound Level Meter',
    style: TextStyle(
      fontWeight: FontWeight.w600,
    ),
  ),
  centerTitle: true,
  leading: IconButton(
    icon: const Icon(
      Icons.info_outlined,
      color: Colors.grey,
    ),
    onPressed: () {},
  ),
  actions: [
    Padding(
      padding: const EdgeInsets.only(right: 4),
      child: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.settings_sharp,
          color: Colors.grey,
        ),
      ),
    )
  ],
);
