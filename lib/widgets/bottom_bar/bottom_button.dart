import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  final Function() onTap;
  final IconData icon;
  final String name;
  final bool select;

  const BottomButton({
    required this.onTap,
    required this.icon,
    required this.name,
    required this.select,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final double itemWidth = MediaQuery.of(context).size.width / 4;

    return InkWell(
      onTap: () {
        onTap();
        if (!select) {
          Navigator.of(context).pushNamed('/$name');
        }
      },
      borderRadius: const BorderRadius.vertical(
        top: Radius.circular(20),
      ),
      child: SizedBox(
        width: itemWidth,
        height: 120,
        child: Container(
          padding: const EdgeInsets.only(bottom: 20),
          decoration: BoxDecoration(
            color: select ? Colors.grey.shade300 : Colors.transparent,
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(20),
            ),
          ),
          child: Icon(
            icon,
            color: select ? Colors.green : Colors.grey,
            size: 40,
          ),
        ),
      ),
    );
  }
}
