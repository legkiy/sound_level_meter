import 'package:flutter/material.dart';

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
        'icon': Icons.mic,
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
      height: 100,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: itemsList.map((item) {
          return _menuItem(context,
              name: item['name'] as String,
              icon: item['icon'] as IconData,
              onTap: item['onTap'] as Function());
        }).toList(),
      ),
    );
  }

  Widget _menuItem(
    BuildContext context, {
    required Function() onTap,
    required IconData icon,
    required String name,
  }) {
    final double itemWidth = MediaQuery.of(context).size.width / 4;

    return InkWell(
      onTap: onTap,
      child: SizedBox(
        width: itemWidth,
        child: Icon(
          icon,
          color: Colors.grey,
          size: 40,
        ),
      ),
    );
  }
}
