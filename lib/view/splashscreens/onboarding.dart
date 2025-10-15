import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:niwali_app/config/route_name.dart';
import 'package:niwali_app/widgets/image_widget.dart';
import 'package:niwali_app/widgets/splash_widget.dart';


class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  // ignore: unused_field
  int _currentPage = 0;

  final List<Map<String, dynamic>> _onboardingData = [
    {
      'imagePath': MyImages.splash1,
      'heading': "Let’s connect \n with each other",
      'bodyText': "Lorem ipsum dolor sit amet, consectetur adipiscing\n elit, sed do eiusmod tempor magna aliqua. Ut labore et\n dolore magna aliqua.",
      'showDots': false,
      'showSkip': false,
      'buttonText': 'Start →',
    },
    {
      'imagePath': MyImages.splash2,
      'heading': "Let's connect \nwith each other",
      'bodyText': "Lorem ipsum dolor sit amet, consectetur adipiscing\n elit, sed do eiusmod tempor incididunt ut labore et \ndolore magna aliqua.",
      'showDots': true,
      'showSkip': true,
      'buttonText': 'Next',
    },
    {
      'imagePath': MyImages.splash3,
      'heading': "Let's connect \nwith each other",
      'bodyText': "Lorem ipsum dolor sit amet, consectetur adipiscing\n elit, sed do eiusmod tempor incididunt ut labore et \ndolore magna aliqua.",
      'showDots': true,
      'showSkip': true,
      'buttonText': 'Next',
    },
    {
      'imagePath': MyImages.splash4,
      'heading': "Let's connect \nwith each other",
      'bodyText': "Lorem ipsum dolor sit amet, consectetur adipiscing\n elit, sed do eiusmod tempor incididunt ut labore et \ndolore magna aliqua.",
      'showDots': true,
      'showSkip': true,
      'buttonText': 'Next',
    },
  ];

  VoidCallback getOnNext(int index) {
    if (index == _onboardingData.length - 1) {
      return () => Get.toNamed(MyPagesName.login);
    } else {
      return () => _pageController.nextPage(duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
    }
  }

  VoidCallback? getOnSkip(int index) {
    if (index < _onboardingData.length - 1) {
      return () => _pageController.animateToPage(_onboardingData.length - 1, duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
    } else {
      return () => Get.toNamed(MyPagesName.login);
    }
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: _pageController,
        itemCount: _onboardingData.length,
        onPageChanged: (index) {
          setState(() {
            _currentPage = index;
          });
        },
        itemBuilder: (context, index) {
          return OnboardingContent(
            pageController: _pageController,
            imagePath: _onboardingData[index]['imagePath'],
            heading: _onboardingData[index]['heading'],
            bodyText: _onboardingData[index]['bodyText'],
            onSkip: getOnSkip(index),
            onNext: getOnNext(index),
            showDots: _onboardingData[index]['showDots'],
            showSkip: _onboardingData[index]['showSkip'],
            buttonText: _onboardingData[index]['buttonText'],
            //currentPage: index + 1,
          );
        },
      ),
    );
  }
}