// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterlearningjourney/custom_widgets/colors.dart';
import 'package:flutterlearningjourney/key_widgets/divider.dart';

void main() {
  runApp(const MyAdvanceDrawer());
}

class MyAdvanceDrawer extends StatelessWidget {
  const MyAdvanceDrawer({super.key});

// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Advanced Drawer @flutterlearningjourney',
      home: AdvancedDrawer(),
    );
  }
}

class AdvancedDrawer extends StatefulWidget {
  const AdvancedDrawer({super.key});

  @override
  State<AdvancedDrawer> createState() => _AdvancedDrawerState();
}

class _AdvancedDrawerState extends State<AdvancedDrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackground,
      appBar: AppBar(
        title: const Text("Advanced Drawer"),
        backgroundColor: AppColors.primaryColor,
      ),
      body: Center(
        child: Text("Swipe Left"),
      ),
      drawer: Drawer(
        backgroundColor: AppColors.appBackground,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 100,
                color: AppColors.primaryColor,
                child: Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    SizedBox(width: 20),
                    CircleAvatar(
                      minRadius: 35,
                      maxRadius: 35,
                      backgroundColor: Colors.white,
                    ),
                    SizedBox(width: 10),
                    Text(
                      "ME",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ],
                ),
              ),
              // Divider(),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: GestureDetector(
                  onTap: (() {
                    // Navigator.pop(
                    //	 context,
                    //	 new MaterialPageRoute(
                    //		 builder: (context) => new HomePageMain()));
                  }),
                  child: Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Icon(Icons.home),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Home",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: GestureDetector(
                  onTap: (() {
                    // Navigator.push(
                    //	 context,
                    //	 new MaterialPageRoute(
                    //		 builder: (context) => new ExploreMenuPage()));
                  }),
                  child: Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Icon(Icons.search),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Explore Menus",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      )
                    ],
                  ),
                ),
              ),
              // SizedBox(
              // height: 10,
              // ),
              ExpansionTile(
                title: Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Icon(CupertinoIcons.person_3_fill, color: Colors.black),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Vendors",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    )
                  ],
                ),

                childrenPadding: EdgeInsets.only(left: 25), // children padding
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: GestureDetector(
                      onTap: (() {
                        // Navigator.push(
                        //	 context,
                        //	 new MaterialPageRoute(
                        //		 builder: (context) => new VendorVenuePage()));
                      }),
                      child: Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Icon(
                            CupertinoIcons.waveform_circle_fill,
                            color: Colors.black87,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Venue",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.black87),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: GestureDetector(
                      onTap: (() {
                        // Navigator.push(
                        //	 context,
                        //	 new MaterialPageRoute(
                        //		 builder: (context) =>
                        //			 new VendorPhotographerPage()));
                      }),
                      child: Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Icon(Icons.camera_alt_outlined),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Photographer",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.black87),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: GestureDetector(
                      onTap: (() {
                        // Navigator.push(
                        //	 context,
                        //	 new MaterialPageRoute(
                        //		 builder: (context) =>
                        //			 new VendorCenematographyPage()));
                      }),
                      child: Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Icon(Icons.video_call),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Cinematography",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.black87),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: GestureDetector(
                      onTap: (() {
                        // Navigator.push(
                        //	 context,
                        //	 new MaterialPageRoute(
                        //		 builder: (context) => new VendorMakeupPage()),);
                      }),
                      child: Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Icon(Icons.brush),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Makeup Artists",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.black87),
                          )
                        ],
                      ),
                    ),
                  ),

                  //more child menu
                ],
              ),

              // SizedBox(
              // height: 10,
              // ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: GestureDetector(
                  onTap: (() {
                    // Navigator.push(
                    //	 context,
                    //	 new MaterialPageRoute(
                    //		 builder: (context) => new DrawerPackages()));
                  }),
                  child: Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Icon(Icons.wallet_giftcard_rounded),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Package",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      //creating a floating action button for that when clicked go to the next page
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const MyDivider(),
            ),
          );
        },
        backgroundColor: AppColors.primaryColor,
        child: const Icon(Icons.arrow_forward),
      ),
    );
  }
}


// drawer in Flutter. It has a lot of features and is very customizable.
// It is also easy to use.
// The code above is a simple implementation of the Advanced Drawer in Flutter.
// The Advanced Drawer is a drawer that is more customizable than the default
// drawer in Flutter. It has a lot of features and is very customizable.
// It is also easy to use.

