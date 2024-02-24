import 'package:flutter/material.dart';
import 'package:sound_level_meter/routes/routes.dart';
import 'package:sound_level_meter/widgets/widgets.dart';

class SavesScreen extends StatelessWidget {
  final Function goToRoute;

  const SavesScreen(this.goToRoute, {super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: true,
      child: Scaffold(
        body: const SafeArea(
          child: Placeholder(),
        ),
        bottomNavigationBar: BottomBar(goToRoute, Routes.savesScreen),
      ),
    );
  }
}
