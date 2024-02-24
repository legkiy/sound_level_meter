import 'package:flutter/material.dart';
import 'package:sound_level_meter/routes/routes.dart';
import 'home_main.dart';
import 'package:sound_level_meter/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  final Function goToRoute;

  const HomeScreen(this.goToRoute, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HeadBar(context: context, goToRoute: goToRoute),
      body: const SafeArea(
        child: HomeMain(),
      ),
      bottomNavigationBar: BottomBar(goToRoute, Routes.home),
    );
  }
}
