import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:niwali_app/config/route_name.dart';
import 'package:niwali_app/widgets/image_widget.dart';
import 'package:niwali_app/widgets/splash_widget.dart';
 // Adjust the import path as needed

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return SplashContent(
      imagePath: MyImages.splash1, // Replace with your actual image path for the first screen
      heading: "Let’s connect \n with each other",
      bodyText: "Lorem ipsum dolor sit amet,consectetur adipiscing\n elit, sed do eiusmod tempor magna aliqua. Ut labore et\n dolore magna aliqua.",
      onNext: () {
         Get.toNamed(MyPagesName.splash1);
        // Handle start button press, e.g., navigate to next screen
        // Navigator.pushReplacementNamed(context, '/onboarding'); // Example navigation
      },
      showDots: false,
      showSkip: false,
      buttonText: 'Start →',
    );
  }
}