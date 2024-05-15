// In this app we're to develp asimple app to demonstrate UI Orientation in Flutter using the following steps:
//- OrientationBuilder Widget
//- GridView Widget.

import 'package:flutter/material.dart';
import 'package:flutterlearningjourney/custom_widgets/colors.dart';
import 'package:flutterlearningjourney/custom_widgets/main_appbar.dart';
import 'package:flutterlearningjourney/home_app/home.dart';

class UIOrientation extends StatelessWidget {
  const UIOrientation({super.key});

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        return Scaffold(
          backgroundColor: AppColors.appBackground,
          appBar: const MainAppBar(
            title: 'UI Orientation',
            backgroundColor: AppColors.primaryColor,
          ),
          body: GridView.count(
            crossAxisCount: orientation == Orientation.portrait ? 2 : 3,
            children: List.generate(
              100,
              (index) {
                return Center(
                  child: Text(
                    'Item $index',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                );
              },
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MyHome(),
                ),
              );
            },
            backgroundColor: AppColors.primaryColor,
            child: const Icon(Icons.arrow_forward),
          ),
        );
      },
    );
  }
}
