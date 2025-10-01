import 'package:get/get.dart';
import 'package:niwali_app/config/route_name.dart';
import 'package:niwali_app/view/splash.dart';
import 'package:niwali_app/view/splash1.dart';
import 'package:niwali_app/view/splash2.dart';
import 'package:niwali_app/view/splash3.dart';

class AppRoutes {
  static routes() => [
    GetPage(name: MyPagesName.splash, page: () => Splash()),
    GetPage(name: MyPagesName.splash1, page: () => Splash1()),
    GetPage(name: MyPagesName.splash2, page: () => Splash2()),
    GetPage(name: MyPagesName.splash3, page: () => Splash3()),
    //  GetPage(name: MyPagesName.productdetails, page: () => ProductDetails()),
    //   GetPage(name: MyPagesName.checkout1, page: () => Checkout1()),
    //    GetPage(name: MyPagesName.checkout2, page: () => Checkout2()),
    //     GetPage(name: MyPagesName.checkout3, page: () => Checkout3()),
    //      GetPage(name: MyPagesName.favorites1, page: () => Favorites1()),
    //       GetPage(name: MyPagesName.favorites2, page: () => Favorites2()),
    //       GetPage(name: MyPagesName.orderdetails, page: () => OrderDetails()),
      
      
  ];
}
