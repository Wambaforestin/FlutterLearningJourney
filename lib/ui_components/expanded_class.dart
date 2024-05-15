// creating a simple flutter app to demonstrate an expanded widget
import 'package:flutter/material.dart';


class MyExpandedClass extends StatelessWidget {
  const MyExpandedClass({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Expanded Widget',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlueAccent,
          title: const Text('Expanded Widget @flutterlearningjourney'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Expanded Widget'),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.green,
                      width: 100,
                      height: 100,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.red,
                      width: 100,
                      height: 100,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.yellow,
                      width: 100,
                      height: 100,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
