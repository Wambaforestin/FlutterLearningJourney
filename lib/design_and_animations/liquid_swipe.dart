import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutterlearningjourney/custom_widgets/colors.dart';
import 'package:flutterlearningjourney/custom_widgets/main_appbar.dart';
import 'package:flutterlearningjourney/design_and_animations/custom_font.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

///Example of App with LiquidSwipe by providing list of widgets
class WithPages extends StatefulWidget {
  static const style = TextStyle(
    fontSize: 30,
    fontFamily: "Billy",
    fontWeight: FontWeight.w600,
  );

  const WithPages({super.key});

  @override
  _WithPages createState() => _WithPages();
}

class _WithPages extends State<WithPages> {
  int page = 0;
  late LiquidController liquidController;
  late UpdateType updateType;
  final pages = [
    Container(
      color: Colors.blue,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Image.asset(
            'assets/images/i1.jpeg',
            fit: BoxFit.cover,
          ),
          const Padding(
            padding: EdgeInsets.all(24.0),
          ),
          const Column(
            children: <Widget>[
              Text(
                "Hi",
                style: WithPages.style,
              ),
              Text(
                "It's Me",
                style: WithPages.style,
              ),
              Text(
                "WF",
                style: WithPages.style,
              ),
            ],
          ),
        ],
      ),
    ),
    Container(
      color: Colors.deepPurpleAccent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Image.asset(
            'assets/images/i2.jpg',
            fit: BoxFit.cover,
          ),
          const Padding(
            padding: EdgeInsets.all(24.0),
          ),
          const Column(
            children: <Widget>[
              Text(
                "Take a",
                style: WithPages.style,
              ),
              Text(
                "look at",
                style: WithPages.style,
              ),
              Text(
                "Liquid Swipe",
                style: WithPages.style,
              ),
            ],
          ),
        ],
      ),
    ),
    Container(
      color: Colors.green,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Image.asset(
            'assets/images/i3.jpg',
            fit: BoxFit.cover,
          ),
          const Padding(
            padding: EdgeInsets.all(24.0),
          ),
          const Column(
            children: <Widget>[
              Text(
                "Do",
                style: WithPages.style,
              ),
              Text(
                "You",
                style: WithPages.style,
              ),
              Text(
                "Like it?",
                style: WithPages.style,
              ),
            ],
          ),
        ],
      ),
    ),
    Container(
      color: Colors.yellow,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Image.asset(
            'assets/images/i2.jpg',
            fit: BoxFit.cover,
          ),
          const Padding(
            padding: EdgeInsets.all(24.0),
          ),
          const Column(
            children: <Widget>[
              Text(
                "Can be",
                style: WithPages.style,
              ),
              Text(
                "Used for",
                style: WithPages.style,
              ),
              Text(
                "Onboarding Design",
                style: WithPages.style,
              ),
            ],
          ),
        ],
      ),
    ),
    Container(
      color: Colors.pink,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Image.asset(
            'assets/images/i3.jpg',
            fit: BoxFit.cover,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 70.0),
            child: ExampleSlider(),
          ),
          const Column(
            children: <Widget>[
              Text(
                "Example",
                style: WithPages.style,
              ),
              Text(
                "of a page",
                style: WithPages.style,
              ),
              Text(
                "with Gesture",
                style: WithPages.style,
              ),
            ],
          ),
        ],
      ),
    ),
    Container(
      color: Colors.red,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Image.asset(
            'assets/images/i2.jpg',
            fit: BoxFit.cover,
          ),
          const Padding(
            padding: EdgeInsets.all(24.0),
          ),
          const Column(
            children: <Widget>[
              Text(
                "Its",
                style: WithPages.style,
              ),
              Text(
                "very easy",
                style: WithPages.style,
              ),
              Text(
                "to use",
                style: WithPages.style,
              ),
            ],
          ),
        ],
      ),
    ),
  ];

  @override
  void initState() {
    liquidController = LiquidController();
    super.initState();
  }

  Widget _buildDot(int index) {
    double selectedness = Curves.easeOut.transform(
      max(
        0.0,
        1.0 - ((page) - index).abs(),
      ),
    );
    double zoom = 1.0 + (2.0 - 1.0) * selectedness;
    return SizedBox(
      width: 25.0,
      child: Center(
        child: Material(
          color: Colors.white,
          type: MaterialType.circle,
          child: SizedBox(
            width: 8.0 * zoom,
            height: 8.0 * zoom,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: AppColors.appBackground,
        appBar: const MainAppBar(
          title: 'Liquid Swipe',
          backgroundColor: AppColors.primaryColor,
        ),
        body: Stack(
          children: <Widget>[
            LiquidSwipe(
              pages: pages,
              positionSlideIcon: 0.8,
              fullTransitionValue: 880,
              slideIconWidget: const Icon(Icons.arrow_back_ios),
              onPageChangeCallback: pageChangeCallback,
              waveType: WaveType.liquidReveal,
              liquidController: liquidController,
              preferDragFromRevealedArea: true,
              enableSideReveal: true,
              ignoreUserGestureWhileAnimating: true,
              enableLoop: true,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: <Widget>[
                  const Expanded(child: SizedBox()),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List<Widget>.generate(pages.length, _buildDot),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: TextButton(
                  onPressed: () {
                    liquidController.animateToPage(
                        page: pages.length - 1, duration: 700);
                  },
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.white.withOpacity(0.01),
                      foregroundColor: Colors.black),
                  child: const Text("Skip to End"),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: TextButton(
                  onPressed: () {
                    liquidController.jumpToPage(
                        page:
                            liquidController.currentPage + 1 > pages.length - 1
                                ? 0
                                : liquidController.currentPage + 1);
                  },
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.white.withOpacity(0.01),
                      foregroundColor: Colors.black),
                  child: const Text("Next"),
                ),
              ),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const CustomFonts(),
            ),
          );
        },
        backgroundColor: AppColors.primaryColor,
        child: const Icon(Icons.arrow_forward),
      ),
      ),
    );
  }

  pageChangeCallback(int lpage) {
    setState(() {
      page = lpage;
    });
  }
}

class ExampleSlider extends StatefulWidget {
  const ExampleSlider({super.key});

  @override
  State<ExampleSlider> createState() => _ExampleSliderState();
}

class _ExampleSliderState extends State<ExampleSlider> {
  double sliderVal = 0;

  @override
  Widget build(BuildContext context) {
    return Slider(
        value: sliderVal,
        activeColor: Colors.white,
        inactiveColor: Colors.red,
        onChanged: (val) {
          setState(() {
            sliderVal = val;
          });
        });
  }
}
