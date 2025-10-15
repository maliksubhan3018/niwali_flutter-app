import 'package:get/get.dart';
import 'package:niwali_app/config/route_name.dart';
import 'package:niwali_app/view/LoginScreens/confirm_code.dart';
import 'package:niwali_app/view/LoginScreens/forgot_password.dart';
import 'package:niwali_app/view/LoginScreens/login.dart';
import 'package:niwali_app/view/SignupScreens/signup.dart';
import 'package:niwali_app/view/SignupScreens/terms.dart';
import 'package:niwali_app/view/checkout/adress.dart';
import 'package:niwali_app/view/checkout/new_card.dart';
import 'package:niwali_app/view/checkout/order.dart';
import 'package:niwali_app/view/checkout/payment_card.dart';
import 'package:niwali_app/view/homescreens/home.dart';
import 'package:niwali_app/view/homescreens/product.dart';
import 'package:niwali_app/view/homescreens/profile.dart';
import 'package:niwali_app/view/menu/language.dart';
import 'package:niwali_app/view/menu/order_history.dart';
import 'package:niwali_app/view/menu/personal_info.dart';
import 'package:niwali_app/view/splashscreens/onboarding.dart';


class AppRoutes {
  static routes() => [
    GetPage(name: MyPagesName.splash, page: () => const OnboardingScreen()),
    GetPage(name: MyPagesName.login, page: () => const Login()),
    GetPage(name: MyPagesName.signup, page: () => const Signup()),
    GetPage(name: MyPagesName.termsconditions, page: () => const TermsConditions()),
    GetPage(name: MyPagesName.forgotpassword, page: () => const ForgotPassword()),
    GetPage(name: MyPagesName.confirmcode, page: () => const ConfirmCode()),
    GetPage(name: MyPagesName.home, page: () => const Home(),transition: Transition.leftToRight),
    GetPage(name: MyPagesName.adress, page: () => const Adress(),transition: Transition.rightToLeft),
    GetPage(name: MyPagesName.product, page: () => const Product()),
    GetPage(name: MyPagesName.profile, page: () => const Profile()),
    GetPage(name: MyPagesName.paymentcard, page: () => const PaymentCard()),
    GetPage(name: MyPagesName.newcard, page: () => const NewCard()),
    GetPage(name: MyPagesName.order, page: () => const Order()),
    GetPage(name: MyPagesName.language, page: () => const Language()),
    GetPage(name: MyPagesName.personalinfo, page: () => const PersonalInfo()),
    GetPage(name: MyPagesName.orderhistory, page: () => const OrderHistory()),
  ];
}