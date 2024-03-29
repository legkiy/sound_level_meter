import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:sound_level_meter/routes/routes.dart';
import 'bottom_button.dart';

class BottomBar extends StatelessWidget {
  final Function goToRoute;
  final String currentRoute;

  const BottomBar(this.goToRoute, this.currentRoute, {super.key});

  @override
  Widget build(BuildContext context) {
    // final String? currentRoute = ModalRoute.of(context)?.settings.name;

    final List<Map<String, Object>> itemsList = [
      {'icon': Icons.save_outlined, 'onTap': () {}, "path": 'memo'},
      {
        'icon': Icons.mic_none_rounded,
        'onTap': () async {
          bool micIsOff = await Permission.microphone.status.isDenied;
          if (micIsOff) {
            await Permission.microphone.request();
          } else {
            print(await Permission.microphone.status);
          }
        },
        "path": Routes.home
      },
      {'icon': Icons.list_rounded, 'onTap': () {}, "path": Routes.savesScreen},
      {'icon': Icons.timer_outlined, 'onTap': () {}, "path": 'timer'}
    ];

    return Container(
      height: 100,
      decoration: const BoxDecoration(
        border: Border(),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: itemsList.map((item) {
          return BottomButton(
            goToRoute: goToRoute,
            icon: item['icon'] as IconData,
            path: item['path'] as String,
            onTap: () {
              item['onTap'];
            },
            currentRoute: currentRoute,
          );
        }).toList(),
      ),
    );
  }
}
