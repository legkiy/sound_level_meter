import 'package:flutter/material.dart';
import 'package:sound_level_meter/widgets/widgets.dart';

class SavesScreen extends StatelessWidget {
  const SavesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const PopScope(
      canPop: true,
      child: Scaffold(
        body: SafeArea(
          child: Placeholder(),
        ),
        bottomNavigationBar: BottomBar(),
      ),
    );
  }
}
