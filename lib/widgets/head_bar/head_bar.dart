import 'package:flutter/material.dart';
import 'package:sound_level_meter/routes/routes.dart';

// ignore: non_constant_identifier_names
AppBar HeadBar({required BuildContext context, required Function goToRoute}) {
  return AppBar(
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
      onPressed: () {
        goToRoute(Routes.infoScreen);

        // Navigator.pushNamed(context, '/info');
      },
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: 4),
        child: IconButton(
          onPressed: () {
            goToRoute(Routes.settingsScreen);

            // Navigator.pushNamed(context, '/settings');
          },
          icon: const Icon(
            Icons.settings_sharp,
            color: Colors.grey,
          ),
        ),
      )
    ],
  );
}
