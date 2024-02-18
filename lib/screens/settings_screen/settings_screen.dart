import 'package:flutter/material.dart';
import 'package:sound_level_meter/widgets/widgets.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Placeholder(),
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}
