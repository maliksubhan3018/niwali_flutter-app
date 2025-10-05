import 'package:get/get.dart';
import 'package:niwali_app/config/route_name.dart';
import 'package:niwali_app/view/LoginScreens/confirm_code.dart';
import 'package:niwali_app/view/LoginScreens/forgot_password.dart';
import 'package:niwali_app/view/LoginScreens/login.dart';
import 'package:niwali_app/view/SignupScreens/signup.dart';
import 'package:niwali_app/view/SignupScreens/terms.dart';

import 'package:niwali_app/view/splashscreens/splash.dart';
import 'package:niwali_app/view/splashscreens/splash1.dart';
import 'package:niwali_app/view/splashscreens/splash2.dart';
import 'package:niwali_app/view/splashscreens/splash3.dart';


class AppRoutes {
  static routes() => [
    GetPage(name: MyPagesName.splash, page: () => Splash()),
    GetPage(name: MyPagesName.splash1, page: () => Splash1()),
    GetPage(name: MyPagesName.splash2, page: () => Splash2()),
    GetPage(name: MyPagesName.splash3, page: () => Splash3()),
    GetPage(name: MyPagesName.login, page: () => Login()),
    GetPage(name: MyPagesName.signup, page: () => Signup()),
    GetPage(name: MyPagesName.termsconditions, page: () => TermsConditions()),
      GetPage(name: MyPagesName.forgotpassword, page: () => ForgotPassword()),
     GetPage(name: MyPagesName.confirmcode, page: () => ConfirmCode()),
    //    GetPage(name: MyPagesName.checkout2, page: () => Checkout2()),
    //     GetPage(name: MyPagesName.checkout3, page: () => Checkout3()),
    //      GetPage(name: MyPagesName.favorites1, page: () => Favorites1()),
    //       GetPage(name: MyPagesName.favorites2, page: () => Favorites2()),
    //       GetPage(name: MyPagesName.orderdetails, page: () => OrderDetails()),
      
      
  ];
}
