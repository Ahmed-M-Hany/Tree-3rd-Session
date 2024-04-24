import 'package:flutter/material.dart';
class CustomButtons extends StatefulWidget {
  const CustomButtons({super.key});

  @override
  State<CustomButtons> createState() => _CustomButtonsState();
}

class _CustomButtonsState extends State<CustomButtons> {

  String _buttonName = 'Press any Button';
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _buttonName = 'Floating Action Button';
          });
        },

        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        title: const Text('Buttons'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[


            Text(_buttonName,style: const TextStyle(fontSize: 32,fontWeight: FontWeight.bold),),


            ElevatedButton(

              onPressed: () {
                setState(() {
                  _buttonName = 'Elevated Button';
                });
              },
              child: const Text('Elevated Button'),
            ),


            TextButton(
              onPressed: () {
                setState(() {
                  _buttonName = 'Text Button';
                });
              },
              child: const Text('Text Button'),
            ),


            IconButton(
              onPressed: () {
                setState(() {
                  _buttonName = 'Icon Button';
                });
              },
              icon: const Icon(Icons.add),
            ),


            OutlinedButton(
              onPressed: () {
                setState(() {
                  _buttonName = 'Outlined Button';
                });
              },
              child: const Text('Outlined Button'),
            ),


          ],
        ),
      ),
    );
  }
}
