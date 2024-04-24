import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class ScrollPage extends StatelessWidget {
  const ScrollPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scroll Page'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
              height: 200,
              width: 200,
              color: Colors.red,
            ),
            Container(
              height: 200,
              width: 200,
              color: Colors.green,
            ),
            Container(
              height: 200,
              width: 200,
              color: Colors.red,
            ),
            Container(
              height: 200,
              width: 200,
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}
