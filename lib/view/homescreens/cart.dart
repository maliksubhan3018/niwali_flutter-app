import 'package:flutter/material.dart';
import 'package:niwali_app/widgets/image_widget.dart';
import 'package:niwali_app/widgets/widget_cart.dart'; // Assuming this contains CartItemWidget
import 'package:niwali_app/widgets/color_widget.dart';
import 'package:niwali_app/widgets/custom_button.dart'; // Assuming this contains CustomButton

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    int totalItems = 5; // Total number of items (counting CartItemWidgets)
    double totalAmount = 2450.00; // Sum of prices: 1050 + 350 + 350 + 350 + 350

    return Scaffold(
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
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Total Items $totalItems',
                          style: TextStyle(
                            color: AppColors.white,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(height: 5),
                        const Divider(color: Colors.white, thickness: 1),
                        const SizedBox(height: 5),
                        Text(
                          'Total Amount',
                          style: TextStyle(
                            color: AppColors.white,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          '\$${totalAmount.toStringAsFixed(2)}',
                          style: TextStyle(
                            color: AppColors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 120, // Adjust width to fit the button as per image
                      child: CustomButton(
                        text: 'Checkout',
                        onPressed: () {
                          // Add checkout functionality here
                        },
                        isPrimary: true,
                      ),
                    ),
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