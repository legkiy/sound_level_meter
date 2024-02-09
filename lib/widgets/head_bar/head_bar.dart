import 'package:flutter/material.dart';

 class HeadBar extends StatelessWidget {
  const HeadBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Sound Level Meter'),
    );
  }
}
