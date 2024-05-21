// creating a simple flutter divider
import 'package:flutter/material.dart';
import 'package:flutterlearningjourney/custom_widgets/colors.dart';
import 'package:flutterlearningjourney/key_widgets/rating_star_bar.dart';

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
        focusColor: AppColors.primaryColor,
      ),
      home: const MyHomePage(title: 'Divider Example'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackground,
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
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
            color: AppColors.primaryColor,
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
            color: AppColors.primaryColor,
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
            color: AppColors.primaryColor,
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
            color: AppColors.primaryColor,
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
            color: AppColors.primaryColor,
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
            color: AppColors.primaryColor,
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
            color: AppColors.primaryColor,
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const RatingStarBar(),
            ),
          );
        },
        backgroundColor: AppColors.primaryColor,
        child: const Icon(Icons.arrow_forward),
      ),
    );
  }
}
