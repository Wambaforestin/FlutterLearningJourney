import "package:flutter/material.dart";
import 'package:animated_rating_stars/animated_rating_stars.dart';
import 'package:flutterlearningjourney/custom_widgets/colors.dart';
import 'package:flutterlearningjourney/custom_widgets/main_appbar.dart';
import 'package:flutterlearningjourney/key_widgets/divider.dart';

//creating an animated star rating bar using the animated_rating_stars package

class RatingStarBar extends StatefulWidget {
  const RatingStarBar({super.key});

  @override
  _RatingStarBarState createState() => _RatingStarBarState();
}

class _RatingStarBarState extends State<RatingStarBar> {
  double _rating = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackground,
      appBar: const MainAppBar(
        title: 'Animated Rating Stars',
        backgroundColor: AppColors.primaryColor,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Rating: $_rating',
              style: const TextStyle(fontSize: 24.0),
            ),
            AnimatedRatingStars(
              initialRating: 2.5,
              onChanged: (rating) {
                setState(() {
                  _rating = rating;
                });
              },
              displayRatingValue: true, // Display the rating value
              interactiveTooltips: true, // Allow toggling half-star state
              customFilledIcon: Icons.star,
              customHalfFilledIcon: Icons.star_half,
              customEmptyIcon: Icons.star_border,
              starSize: 40.0,
              animationDuration: const Duration(milliseconds: 500),
              animationCurve: Curves.easeInOut,
            ),
          ],
        ),
      ),
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
