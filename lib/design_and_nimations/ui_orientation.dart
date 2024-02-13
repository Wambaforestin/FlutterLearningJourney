// In this app we're to develp asimple app to demonstrate UI Orientation in Flutter using the following steps:
//- OrientationBuilder Widget
//- GridView Widget.

import 'package:flutter/material.dart';

class UIOrientation extends StatelessWidget {
  const UIOrientation({super.key});

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('UI Orientation'),
          ),
          body: GridView.count(
            crossAxisCount: orientation == Orientation.portrait ? 2 : 3,
            children: List.generate(100, (index) {
              return Center(
                child: Text(
                  'Item $index',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              );
            }),
          ),
        );
      },
    );
  }
}