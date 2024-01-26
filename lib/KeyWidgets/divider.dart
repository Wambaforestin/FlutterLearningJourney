// creating a simple flutter divider
import 'package:flutter/material.dart';

void main() {
  runApp(const MyDivider());
}

class MyDivider extends StatelessWidget {
  const MyDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Divider Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Divider Example @flutterlearningjourney'),
    );
  }
}

class MyHomePage extends StatelessWidget {
   const MyHomePage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(title),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: const Text('Horse'),
            trailing: const Icon(Icons.keyboard_arrow_right),
            onTap: () {
              // do something
            },
          ),
          const Divider(
            color: Colors.blue,
            height: 20,
            thickness: 5,
            indent: 10,
            endIndent: 10,
          ),
          ListTile(
            title: const Text('Cow'),
            trailing: const Icon(Icons.keyboard_arrow_right),
            onTap: () {
              // do something
            },
          ),
          const Divider(
            color: Colors.blue,
            height: 20,
            thickness: 5,
            indent: 10,
            endIndent: 10,
          ),
          ListTile(
            title: const Text('Camel'),
            trailing: const Icon(Icons.keyboard_arrow_right),
            onTap: () {
              // do something
            },
          ),
          const Divider(
            color: Colors.blue,
            height: 20,
            thickness: 5,
            indent: 10,
            endIndent: 10,
          ),
          ListTile(
            title: const Text('Sheep'),
            trailing: const Icon(Icons.keyboard_arrow_right),
            onTap: () {
              // do something
            },
          ),
          const Divider(
            color: Colors.blue,
            height: 20,
            thickness: 5,
            indent: 10,
            endIndent: 10,
          ),
          ListTile(
            title: const Text('Goat'),
            trailing: const Icon(Icons.keyboard_arrow_right),
            onTap: () {
              // do something
            },
          ),
          const Divider(
            color: Colors.blue,
            height: 20,
            thickness: 5,
            indent: 10,
            endIndent: 10,
          ),
          ListTile(
            title: const Text('Pig'),
            trailing: const Icon(Icons.keyboard_arrow_right),
            onTap: () {
              // do something
            },
          ),
          const Divider(
            color: Colors.blue,
            height: 20,
            thickness: 5,
            indent: 10,
            endIndent: 10,
          ),
          ListTile(
            title: const Text('Dog'),
            trailing: const Icon(Icons.keyboard_arrow_right),
            onTap: () {
              // do something
            },
          ),
          const Divider(
            color: Colors.blue,
            height: 20,
            thickness: 5,
            indent: 10,
            endIndent: 10,
          ),
          ListTile(
            title: const Text('Cat'),
            trailing: const Icon(Icons.keyboard_arrow_right),
            onTap: () {
              // do something
            },
          ),
          
        ],
      ),
    );
  }
}