import 'package:flutter/material.dart';
import 'package:sound_level_meter/widgets/widgets.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({super.key});

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
