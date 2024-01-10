// creating a simple flutter application with 05 tabs

import 'package:flutter/material.dart';

void main() {
  runApp(const TabBarDemo());
}

class TabBarDemo extends StatelessWidget {
  const TabBarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 133, 194, 224),
            title: const Text(
              'Tabs Demo @flutterlearningjourney',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            bottom: const TabBar(
              isScrollable: true,
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.directions_car,
                    color: Colors.white,
                  ),
                  text: 'Car',
                ),
                Tab(
                  icon: Icon(
                    Icons.directions_transit
                    ,color: Colors.white,),
                  text: 'Transit',
                ),
                Tab(
                  icon: Icon(
                    Icons.directions_bike,
                    color: Colors.white,),
                  text: 'Bike',
                ),
                Tab(
                  icon: Icon(
                    Icons.directions_boat,
                    color: Colors.white,),
                  text: 'Boat',
                ),
                Tab(
                  icon: Icon(
                    Icons.directions_walk
                    ,color: Colors.white,),
                  text: 'Walk',
                ),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              Center(
                child: Text('It\'s a car'),
              ),
              Center(
                child: Text('It\'s a transit'),
              ),
              Center(
                child: Text('It\'s a bike'),
              ),
              Center(
                child: Text('It\'s a boat'),
              ),
              Center(
                child: Text('It\'s a walk'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
