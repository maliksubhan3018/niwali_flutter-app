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
    return Scaffold(backgroundColor: AppColors.white,
      appBar: const AppBarWidget(title: "Order Confirm"),
      body: Column(
        children: [
        SizedBox(height: 50,),
       Image.asset(MyImages.phoneimg,width: 2000,),
      SizedBox(height: 30,),
      Text("Order Confirmed!",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
      SizedBox(height: 10,),
      SizedBox(
  width:300,
  child: Text(
    "Your order has been confirmed, we will send you confirmation email shortly.",
    style: TextStyle(fontSize: 14),
    textAlign: TextAlign.center,
    softWrap: true,
    maxLines: 2,
    
  ),
),
 SizedBox(height: 50,),
  Padding(
    padding:  EdgeInsets.all(8),
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