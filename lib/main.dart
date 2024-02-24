import 'package:flutter/material.dart';
import 'package:sound_level_meter/routes/routes.dart';
import 'package:sound_level_meter/screens/screens.dart';

void main() {
  runApp(const SoundLeveMeter());
}

class SoundLeveMeter extends StatefulWidget {
  const SoundLeveMeter({super.key});

  @override
  State<SoundLeveMeter> createState() => _SoundLeveMeterState();
}

class _SoundLeveMeterState extends State<SoundLeveMeter> {
  String thisRoute = Routes.home;
  bool is404 = false;

  void goToRoute(String route) {
    setState(() {
      thisRoute = route;
    });
  }

  Widget _getCurrentPage() {
    switch (thisRoute) {
      case Routes.savesScreen:
        return SavesScreen(goToRoute);
      case Routes.infoScreen:
        return InfoScreen(goToRoute);
      case Routes.settingsScreen:
        return SettingsScreen(goToRoute);
      default:
        return HomeScreen(goToRoute);
    }
  }

  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
      title: 'Sound Level Meter',
      theme: ThemeData(
        fontFamily: 'PT_Sans',
      ),
      home: Navigator(
        pages: [
          MaterialPage(child: HomeScreen(goToRoute)),
          MaterialPage(child: _getCurrentPage()),
          if (is404)
            const MaterialPage(
              child: Scaffold(
                body: SafeArea(
                  child: Text('Error 404'),
                ),
              ),
            ),
        ],
        onPopPage: (route, result) {
          if (!route.didPop(result)) {
            return true;
          }
          return true;
        },
      ),
      // routes: {
      //   Routes.home: (context) => const HomeScreen(),
      //   Routes.savesScreen: (context) => const SavesScreen(),
      //   Routes.infoScreen: (context) => const InfoScreen(),
      //   Routes.settingsScreen: (context) => const SettingsScreen(),
      // },
      // initialRoute: Routes.home,
    );
  }
}
