// A flutter app to demonstrate how to use themes.

import 'package:flutter/material.dart';
import 'package:flutterlearningjourney/custom_widgets/colors.dart';
import 'package:flutterlearningjourney/design_and_animations/ui_orientation.dart';

class MyThemes extends StatelessWidget {
  const MyThemes({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MyThemes',
      // here...
      theme: ThemeData(
        primaryColor: AppColors.appBackground,
        brightness: Brightness.dark,
        // accentColor: Colors.deepPurpleAccent,
        fontFamily: 'XanhMono',

        // texttheme..
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            fontSize: 72.0,
            fontWeight: FontWeight.bold,
          ),
          titleLarge: TextStyle(
            fontSize: 36.0,
            fontStyle: FontStyle.italic,
          ),
          bodyMedium: TextStyle(
            fontSize: 14.0,
            fontFamily: 'XanhMono',
          ),
        ),
      ),
      home: const MyStatelessWidget(),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackground,
      appBar: AppBar(
        title: Text(
          'MyThemes',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        backgroundColor: AppColors.primaryColor,
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.home,
              color: Colors.white,
            ),
            onPressed: () {
              // do something
            },
          ),
        ],
      ),
      body: Container(
        color: Colors.deepPurple,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                '@flutterlearningjourney',
              ),
              Text(
                'MyThemes - titleLarge,italic',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Text(
                'MyThemes - bodyLarge,regular',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const UIOrientation(),
            ),
          );
        },
      ),
    );
  }
}
