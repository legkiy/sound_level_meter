import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'bottom_button.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    final String? currentRoute = ModalRoute.of(context)?.settings.name;

    final List<Map<String, Object>> itemsList = [
      {'icon': Icons.save_outlined, 'onTap': () {}, 'name': 'saves'},
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
        'name': ''
      },
      {'icon': Icons.list_rounded, 'onTap': () {}, 'name': 'saves-list'},
      {'icon': Icons.timer_outlined, 'onTap': () {}, 'name': 'timer'}
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
            name: item['name'] as String,
            icon: item['icon'] as IconData,
            onTap: item['onTap'] as Function(),
            select: currentRoute == '/${item['name']}',
          );
        }).toList(),
      ),
    );
  }
}
