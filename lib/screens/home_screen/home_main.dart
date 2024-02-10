import 'package:flutter/material.dart';

class HomeMain extends StatelessWidget {
  const HomeMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 100,
          color: Colors.red,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              '44.4',
              style: TextStyle(
                fontSize: 80,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 50,
              child: VerticalDivider(
                color: Colors.grey.shade200,
                width: 20,
                thickness: 2,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Min 35.3',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.green.shade800,
                  ),
                ),
                Text(
                  'Max 70.3',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.red.shade800,
                  ),
                )
              ],
            )
          ],
        )
      ],
    );
  }
}
