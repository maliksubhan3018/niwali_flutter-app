// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:niwali_app/config/route.dart';
import 'package:niwali_app/config/route_name.dart';
//import 'package:niwali_app/view/LoginScreens/login.dart';
import 'package:niwali_app/widgets/color_widget.dart'; // if you have AppColors defined here

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.greenLight),
        useMaterial3: true,

        // 🧩 Global fix for TextButtons hover/splash effect
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            overlayColor: MaterialStateProperty.all(Colors.transparent),
            backgroundColor: MaterialStateProperty.all(Colors.transparent),
          ),
        ),

        // 🧩 Optional: Disable splash/hover highlights globally for all buttons
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        hoverColor: Colors.transparent,
      ),

      getPages: AppRoutes.routes(),
       initialRoute: MyPagesName.splash,
      //home: const Login(),
    );
  }
}
