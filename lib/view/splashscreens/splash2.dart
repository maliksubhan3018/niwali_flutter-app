// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:niwali_app/config/route_name.dart';
// import 'package:niwali_app/widgets/image_widget.dart';
// import 'package:niwali_app/widgets/splash_widget.dart';

// class Splash2 extends StatelessWidget {
//   const Splash2({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SplashContent(
//       imagePath: MyImages.splash3,
//       heading: "Let's connect \nwith each other",
//       bodyText:
//           "Lorem ipsum dolor sit amet, consectetur adipiscing\n elit, sed do eiusmod tempor incididunt ut labore et \ndolore magna aliqua.",
//       onSkip: () {
//         Get.toNamed(MyPagesName.splash3);
//       },
//       onNext: () {
//         Get.toNamed(MyPagesName.splash3);
//       },
//       currentPage: 2, // 👈 second dot active
//     );
//   }
// }