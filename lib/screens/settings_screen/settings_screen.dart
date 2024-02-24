import 'package:flutter/material.dart';
import 'package:sound_level_meter/routes/routes.dart';
import 'package:sound_level_meter/widgets/widgets.dart';

class SettingsScreen extends StatelessWidget {
  final Function goToRoute;

  const SettingsScreen(this.goToRoute, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const SafeArea(
        child: Placeholder(),
      ),
      bottomNavigationBar: BottomBar(goToRoute, Routes.settingsScreen),
    );
  }
}
