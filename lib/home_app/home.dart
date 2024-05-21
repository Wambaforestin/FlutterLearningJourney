import 'package:flutter/material.dart';
import 'package:flutterlearningjourney/custom_widgets/colors.dart';
import 'package:flutterlearningjourney/design_and_animations/route_transition.dart';
import 'package:flutterlearningjourney/form_and_gestion/form_validation.dart';
import 'package:flutterlearningjourney/key_widgets/advance_drawer.dart';
import 'package:flutterlearningjourney/mini_projects/my_counter_app.dart';
import 'package:flutterlearningjourney/ui_components/expanded_class.dart';

void main() {
  runApp(const MyHome());
}

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List moreArr = [
    {
      "index": "1",
      "name": "Key Widget",
      "image": "assets/images/flutter-banner.png",
      "base": 15
    },
    {
      "index": "2",
      "name": "UI Components",
      "image": "assets/images/flutter-banner.png",
      "base": 11
    },
    {
      "index": "3",
      "name": "Design and Animations",
      "image": "assets/images/flutter-banner.png",
      "base": 7
    },
    {
      "index": "4",
      "name": "Form and Gesture",
      "image": "assets/images/flutter-banner.png",
      "base": 3
    },
    {
      "index": "5",
      "name": "Mini Projects",
      "image": "assets/images/flutter-banner.png",
      "base": 1
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackground,
      appBar: AppBar(
        title: const Text("Flutter Learning Journey App"),
        backgroundColor: AppColors.primaryColor,
        actions: [
          IconButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text("Contact Me"),
                    content: const Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Github: @wambaforestin"),
                        Text("LinkedIn: @wambaforestin")
                      ],
                    ),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text("Close"),
                      ),
                    ],
                  );
                },
              );
            },
            icon: const Icon(Icons.email),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 10,
              ),
              ListView.builder(
                  padding: EdgeInsets.zero,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: moreArr.length,
                  itemBuilder: (context, index) {
                    var mObj = moreArr[index] as Map? ?? {};
                    var countBase = mObj["base"] as int? ?? 0;
                    return InkWell(
                      onTap: () {
                        switch (mObj["index"].toString()) {
                          case "1":
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const MyAdvanceDrawer(),
                              ),
                            );
                            break; // Add break statements to exit the switch statement
                          case "2":
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const MyExpandedClass(),
                              ),
                            );
                            break;
                          case "3":
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const RouteTransition(),
                              ),
                            );
                            break;
                          case "4":
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const MyForm(),
                              ),
                            );
                            break;
                          case "5":
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const MyCounterApp(),
                              ),
                            );
                            break;
                          default:
                        }
                      },
                      child: Container(
                        margin: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 20),
                        child: Stack(
                          alignment: Alignment.centerRight,
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 12, horizontal: 12),
                              decoration: BoxDecoration(
                                  color: AppColors.secondaryColor,
                                  borderRadius: BorderRadius.circular(5)),
                              margin: const EdgeInsets.only(right: 15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 50,
                                    height: 50,
                                    padding: const EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(25)),
                                    alignment: Alignment.center,
                                    child: Image.asset(mObj["image"].toString(),
                                        width: 25,
                                        height: 25,
                                        fit: BoxFit.contain),
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  Expanded(
                                    child: Text(
                                      mObj["name"].toString(),
                                      style: const TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  if (countBase > 0)
                                    Container(
                                      padding: const EdgeInsets.all(4),
                                      decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius:
                                              BorderRadius.circular(12.5)),
                                      alignment: Alignment.center,
                                      child: Text(
                                        countBase.toString(),
                                        style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15)),
                              child: const Icon(
                                Icons.arrow_forward_ios,
                                color: AppColors.primaryTextColor,
                                size: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  })
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.primaryColor,
        onPressed: () {
          showAboutDialog(
            barrierColor: Colors.black.withOpacity(0.5),
            context: context,
            applicationIcon: const FlutterLogo(),
            applicationName: "Flutter Learning Journey App",
            applicationVersion: "1.0.0",
            applicationLegalese: "©2023 FlutterLearningJourney.com",
            children: const [
              Text(
                  "This is a Flutter Learning Journey app. It is a simple app that contains different widgets, UI components, design and animations, and mini projects."),
            ],
          );
        },
        child: const Icon(
          Icons.info,
          color: Colors.black,
          size: 30,
        ),
      ),
    );
  }
}
