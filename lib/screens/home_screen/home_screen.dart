import 'package:flutter/material.dart';
import 'package:sound_level_meter/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Sound Level Meter'),
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(
              Icons.info_outlined,
              color: Colors.grey,
            ),
            onPressed: () {},
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 4),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.settings_sharp,
                  color: Colors.grey,
                ),
              ),
            )
          ],
        ),
        body: const SafeArea(
          minimum: EdgeInsets.symmetric(horizontal: 14),
          child: Column(
            children: [
              Text('data'),
            ],
          ),
        ),
        bottomNavigationBar: const BottomBar());
  }
}
