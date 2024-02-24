import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  final Function goToRoute;
  final Function() onTap;
  final IconData icon;
  final String path;
  final String currentRoute;

  const BottomButton({
    required this.goToRoute,
    required this.onTap,
    required this.icon,
    required this.currentRoute,
    required this.path,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final double itemWidth = MediaQuery.of(context).size.width / 4;
    final bool isSelect = currentRoute == path;
    return InkWell(
      onTap: () {
        onTap();
        if (!isSelect) {
          goToRoute(path);
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
            color: isSelect ? Colors.grey.shade300 : Colors.transparent,
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(20),
            ),
          ),
          child: Icon(
            icon,
            color: isSelect ? Colors.green : Colors.grey,
            size: 40,
          ),
        ),
      ),
    );
  }
}
