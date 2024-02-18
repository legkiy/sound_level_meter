import 'package:flutter/material.dart';
import 'home_main.dart';
import 'package:sound_level_meter/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HeadBar(context),
      body: const SafeArea(
        child: HomeMain(),
      ),
      bottomNavigationBar: const BottomBar(),
    );
  }
}
