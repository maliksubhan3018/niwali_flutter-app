// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:niwali_app/config/route_name.dart';
import 'package:niwali_app/widgets/app_bar.dart';
import 'package:niwali_app/widgets/image_widget.dart';
import 'package:niwali_app/widgets/widget_cart.dart';
import 'package:niwali_app/widgets/color_widget.dart';
import 'package:niwali_app/widgets/custom_button.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: const AppBarWidget( title: "cart",),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  CartItemWidget(
                    name: 'Janda Bolong',
                    price: '1050',
                    quantity: 3,
                    imageAsset: MyImages.product1,
                  ),
                  CartItemWidget(
                    name: 'Janda Bolong',
                    price: '350',
                    quantity: 1,
                    imageAsset: MyImages.product1,
                  ),
                  CartItemWidget(
                    name: 'Janda Bolong',
                    price: '350',
                    quantity: 1,
                    imageAsset: MyImages.product1,
                  ),
                  CartItemWidget(
                    name: 'Janda Bolong',
                    price: '350',
                    quantity: 1,
                    imageAsset: MyImages.product1,
                  ),
                  CartItemWidget(
                    name: 'Janda Bolong',
                    price: '350',
                    quantity: 1,
                    imageAsset: MyImages.product1,
                  ),
                ],
              ),
            ),
            Card(
              color: AppColors.greenLight,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // First Row (Total Items)
                    Row(
                      children: [
                        Text(
                          "Total Items 12",
                          style: TextStyle(
                            color: AppColors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 8),
                    Divider(color: Colors.white.withOpacity(0.5), thickness: 1),

                    const SizedBox(height: 8),

                    // Second Row (Total Amount + Checkout)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Total Amount",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              "\$3000.00",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),

                        SizedBox(
                          width: 150,
                          child: CustomButton(
                            text: "Checkout →",
                            onPressed: () {
                               Get.toNamed(MyPagesName.adress);
                            },
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 16),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
