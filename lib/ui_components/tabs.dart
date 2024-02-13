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
          body:  TabBarView(
            children: [
              Center(
                child: Car(),
              ),
              Center(
                child: Transit(),
              ),
              Center(
                child: Bike(),
              ),
              Center(
                child: Boat(),
              ),
              Center(
                child: Walk(),
              ),
            ],
          ),
        ),
      ),
    );
  } 
}
// creatting tabbarview for each tab. each tab has a different color and text and some icons so that we can see the difference between each tab.note use a staeful widget for this
//for the car tab
class Car extends StatefulWidget {
  @override
  _CarState createState() => _CarState();
}

class _CarState extends State<Car> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: const Center(
        child: Text(
          'It\'s a car',
          style: TextStyle(
            fontSize: 50,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

//for the transit tab
class Transit extends StatefulWidget {
  @override
  _TransitState createState() => _TransitState();
}

class _TransitState extends State<Transit> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: const Center(
        child: Text(
          'It\'s a transit',
          style: TextStyle(
            fontSize: 50,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

//for the bike tab

class Bike extends StatefulWidget {
  @override
  _BikeState createState() => _BikeState();
}

class _BikeState extends State<Bike> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: const Center(
        child: Text(
          'It\'s a bike',
          style: TextStyle(
            fontSize: 50,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

//for the boat tab

class Boat extends StatefulWidget {
  @override
  _BoatState createState() => _BoatState();
}
class _BoatState extends State<Boat> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      child: const Center(
        child: Text(
          'It\'s a boat',
          style: TextStyle(
            fontSize: 50,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

//for the walk tab

class Walk extends StatefulWidget {
  @override
  _WalkState createState() => _WalkState();
}

class _WalkState extends State<Walk> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple,
      child: const Center(
        child: Text(
          'It\'s a walk',
          style: TextStyle(
            fontSize: 50,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}



