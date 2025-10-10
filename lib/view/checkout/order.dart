import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:niwali_app/config/route_name.dart';
import 'package:niwali_app/widgets/app_bar.dart';
import 'package:niwali_app/widgets/color_widget.dart';
import 'package:niwali_app/widgets/custom_button.dart';
import 'package:niwali_app/widgets/image_widget.dart';

class Order extends StatelessWidget {
  const Order({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBarWidget(title: "Order Confirm"),
      body: Column(
        children: [
          SizedBox(height: 50),
          // Image.asset(MyImages.phoneimg, width: 2000),
          Container(
            height: 250,
            width: double.infinity,
            decoration: BoxDecoration(
              // color: Colors.amber,
              image: DecorationImage(
                image: AssetImage(MyImages.phoneimg),
                fit: BoxFit.cover,
              ),

              // Image.asset(MyImages.phoneimg, fit: BoxFit.contain),
            ),
          ),
          SizedBox(height: 30),
          Text(
            "Order Confirmed!",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            "Your order has been confirmed, we will send\n you confirmation email shortly.",
            style: TextStyle(fontSize: 14),
             textAlign: TextAlign.center,
            
            maxLines: 2,
          ),
          SizedBox(height: 50),
          Padding(
            padding: EdgeInsets.all(8),
            child: CustomButton(
              text: 'Go to Home',
              onPressed: () {
                Get.toNamed(MyPagesName.home);
              },
            ),
          ),
        ],
      ),
    );
  }
}
