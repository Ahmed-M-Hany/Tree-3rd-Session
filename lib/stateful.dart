import 'package:flutter/material.dart';
class CustomStatefull extends StatefulWidget {
  const CustomStatefull({super.key});

  @override
  State<CustomStatefull> createState() => _CustomStatefullState();
}

class _CustomStatefullState extends State<CustomStatefull> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counter++;
          });
        },
        child: const Icon(Icons.add),
      ),
      //simple counter app
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: const Icon(Icons.add),
              onPressed: () {
                //why not working?
                counter++;
              },
            ),
            Text('$counter', style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
            IconButton(
              icon: const Icon(Icons.remove),
              onPressed: () {

                  //why not working?
                  counter--;
              },
            ),
          ],
        ),
      ),
    );
  }
}
