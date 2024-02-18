import 'package:flutter/material.dart';
import 'package:sound_level_meter/routes/routes.dart';
import 'package:sound_level_meter/screens/screens.dart';

void main() {
  runApp(const SoundLeveMeter());
}

class SoundLeveMeter extends StatelessWidget {
  const SoundLeveMeter({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sound Level Meter',
      theme: ThemeData(
        fontFamily: 'PT_Sans',
      ),
      routes: {
        Routes.home: (context) => const HomeScreen(),
        Routes.savesScreen: (context) => const SavesScreen(),
        Routes.infoScreen: (context) => const InfoScreen(),
        Routes.settingsScreen: (context) => const SettingsScreen(),
      },
      initialRoute: Routes.home,
    );
  }
}
