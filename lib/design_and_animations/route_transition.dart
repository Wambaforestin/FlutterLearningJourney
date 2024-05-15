import 'package:flutter/material.dart';
import 'package:flutterlearningjourney/custom_widgets/colors.dart';
import 'package:flutterlearningjourney/custom_widgets/main_appbar.dart';
import 'package:flutterlearningjourney/design_and_animations/lottie_page.dart';

class RouteTransition extends StatefulWidget {
  const RouteTransition({super.key});

  @override
  State<RouteTransition> createState() => _RouteTransitionState();
}

class _RouteTransitionState extends State<RouteTransition> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackground,
      appBar: const MainAppBar(
          title: 'Route Transition', backgroundColor: AppColors.primaryColor),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            //implementation of route transition
            Navigator.of(context).push(_createRoute());
          },
          child: const Text('Go to the next page'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const LottiePage(),
            ),
          );
        },
        backgroundColor: AppColors.primaryColor,
        child: const Icon(Icons.arrow_forward),
      ),
    );
  }
}

// Route transition implementation
Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const SecondPage(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      // const begin = Offset(1.0, 0.0); // means the right side of the screen
      const begin = Offset(0.0, 1.0); //means the bottom of the screen
      // Offset(0.0, -1.0) means the top of the screen
      // Offset(-1.0, 0.0) means the left side of the screen
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
      var offsetAnimation = animation.drive(tween);

      return SlideTransition(
        position: offsetAnimation,
        child: child,
      );
    },
  );
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackground,
      appBar: const MainAppBar(
          title: 'Second Page', backgroundColor: AppColors.primaryColor),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}
