import 'package:flutter/material.dart';
import 'package:niwali_app/widgets/image_widget.dart';
import 'package:niwali_app/widgets/splash_widget.dart';

class Splash3 extends StatelessWidget {
  const Splash3({super.key});

  @override
  Widget build(BuildContext context) {
    
    return SplashContent(
      imagePath: MyImages.splash4,
      heading: "Let's connect \nwith each other",
      bodyText:
          "Lorem ipsum dolor sit amet, consectetur adipiscing\n elit, sed do eiusmod tempor incididunt ut labore et \ndolore magna aliqua.",
      onSkip: () {
        print('Skip pressed');
      },
      onNext: () {
        print('Next pressed');
      },
    );
  }
}