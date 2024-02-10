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
    this.select = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final double itemWidth = MediaQuery.of(context).size.width / 4;
    return InkWell(
      onTap: onTap,
      borderRadius: const BorderRadius.vertical(
        top: Radius.circular(20),
      ),
      child: SizedBox(
        width: itemWidth,
        height: 100,
        child: Container(
          decoration: BoxDecoration(
            color: select ? Colors.grey.shade300 : null,
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(20),
            ),
          ),
          child: Icon(
            icon,
            color: select ? Colors.green : Colors.grey,
            size: 50,
          ),
        ),
      ),
    );
    ;
  }
}
