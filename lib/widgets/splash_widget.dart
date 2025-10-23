import 'package:flutter/material.dart';
import 'package:niwali_app/widgets/custom_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:niwali_app/widgets/color_widget.dart';

class OnboardingContent extends StatelessWidget {
  final String imagePath;
  final String heading;
  final String bodyText;
  final VoidCallback? onSkip;
  final VoidCallback? onNext;
  final bool showDots;
  final bool showSkip;
  final String buttonText;
  final int? currentPage;
  final PageController pageController;

  const OnboardingContent({
    super.key,
    required this.imagePath,
    required this.heading,
    required this.bodyText,
    this.onSkip,
    this.onNext,
    this.showDots = true,
    this.showSkip = true,
    this.buttonText = 'Next',
    this.currentPage,
    required this.pageController,
  });

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final containerHeight = screenHeight / 2;
 final offsetPageController = PageController(
      initialPage: (pageController.page?.toInt() ?? 0) -0,
      viewportFraction: pageController.viewportFraction,
    );
   // int relativeIndex = (currentPage != null && currentPage! > 1) ? currentPage! - 2 : 0;

    return Scaffold(
      backgroundColor: Colors.white,                     
      body: Column(
        children: [
          SizedBox(
            height: containerHeight,
            child: Container(
              width: double.infinity,
              decoration:  BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(30.0),
                ),
              ),
              child: Center(
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.contain,
                  width: 300,
                  height: 250,
                ),
              ),
            ),
          ),
          SizedBox(
            height: containerHeight,
            child: Container(
              width: double.infinity,
              decoration:  BoxDecoration(
                color: AppColors.greenLight,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(50)),
              ),
              padding:  EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        heading,
                        style:  TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                       SizedBox(height: 12),
                      Text(
                        bodyText,
                        style: const TextStyle(
                          fontSize: 12.0,
                          color: Colors.white,
                          height: 1.5,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      if (showDots) ...[
                        const SizedBox(height: 16.0),
                        SmoothPageIndicator(
                          controller: offsetPageController ,
                          count: 3,
                          effect:WormEffect(
                            dotHeight: 8,
                            dotWidth: 8,
                            activeDotColor: Colors.white,
                            dotColor: Colors.grey.shade400,
                            spacing: 8,
                          ),
                        ),
                      ],
                    ],
                  ),
                   SizedBox(height: 24),
                  if (showSkip) ...[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TextButton(
                          onPressed: onSkip,
                          child: const Text(
                            'Skip',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        CustomButton(
                          text: buttonText,
                          onPressed: onNext,
                          wsize: 120,
                          radious: 20,
                        ),
                      ],
                    ),
                  ] else ...[
                    CustomButton(
                      text: buttonText,
                      onPressed: onNext,
                      wsize: 120,
                      radious: 20, 
                    ),
                  ],
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}