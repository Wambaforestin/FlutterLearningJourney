// creating a simple clickable card in flutter
import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
  home: MyClickableCard()
  ));

class MyClickableCard extends StatelessWidget {
  const MyClickableCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: const Text('Clickable Card @flutterlearningjourney'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                content: Text('Gesture Detected @flutterlearningjourney')));
          },
          child: Card(
            elevation: 10,
            child: Container(
              padding: const EdgeInsets.all(20),
              height: 200,
              width: 200,
              color: Colors.lightBlueAccent,
              child: const Center(
                child: Text(
                  'Click Me',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
