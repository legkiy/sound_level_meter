import 'package:flutter/material.dart';
import 'bottom_button.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, Object>> itemsList = [
      {
        'icon': Icons.save_outlined,
        'onTap': () {
          print('save');
        },
        'name': 'save'
      },
      {
        'icon': Icons.mic_none_rounded,
        'onTap': () {
          print('mic');
        },
        'name': 'mic'
      },
      {
        'icon': Icons.list_rounded,
        'onTap': () {
          print('list');
        },
        'name': 'list'
      },
      {
        'icon': Icons.timer_outlined,
        'onTap': () {
          print('timer');
        },
        'name': 'timer'
      }
    ];

    return Container(
      // height: 100,
      decoration: const BoxDecoration(
        border: Border(
            // top: BorderSide(color: Colors.grey.shade300, width: 2),
            ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: itemsList.map((item) {
          return BottomButton(
            name: item['name'] as String,
            icon: item['icon'] as IconData,
            onTap: item['onTap'] as Function(),
            select: item['name'] == 'mic',
          );
        }).toList(),
      ),
    );
  }
}
