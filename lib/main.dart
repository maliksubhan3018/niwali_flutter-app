import 'package:flutter/material.dart';
import 'package:niwali_app/config/route.dart';
import 'package:niwali_app/config/route_name.dart';


import 'package:get/get.dart';
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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      getPages: AppRoutes.routes(),
       initialRoute: MyPagesName.splash,
       //initialRoute: MyPagesName.checkout2,
      //home: const Splash(), // ✅ Correct call
    );
  }
}
