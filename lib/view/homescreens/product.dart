// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:niwali_app/widgets/color_widget.dart'; // your color widget

import 'package:niwali_app/widgets/image_widget.dart'; // your custom app bar

class Product extends StatelessWidget {
  const Product({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true, // allows image behind appbar
      appBar: AppBar(
        backgroundColor:AppColors.greenDark,
        shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30), // 👈 curve only bottom-left
        ),
      ),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Product',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart_outlined, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: Stack(
        children: [
          // Background image
          Container(
            height: MediaQuery.of(context).size.height * 0.45,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(MyImages.product1), // your product image path
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Favorite icon
          Positioned(
            top: MediaQuery.of(context).padding.top + 60,
            left: 20,
            child: Container(
              height: 45,
              width: 45,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.15),
                    blurRadius: 5,
                  ),
                ],
              ),
              child: const Icon(Icons.favorite_border, color: Colors.green),
            ),
          ),

          // Product details container
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.55,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Product name + price
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Monstera Adan',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '\$850',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: AppColors.black,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),

                    const Text(
                      'Monstera Adansoni grows best in a well-draining Aroid mix using bark, perlite, peat moss, and charcoal. Keep your plant in bright indirect light and humidity above 60%. When watering, make sure that the potting mix of your adansonii remains slightly moist.',
                      style: TextStyle(fontSize: 14, color: Colors.black54, height: 1.5),
                    ),
                    const SizedBox(height: 20),

                    // Button and quantity row
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: AppColors.greenLight,
                      ),
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [ 
                          SizedBox(width: 20,),
                          Icon(Icons.shopping_bag_outlined, color: Colors.white),
                          SizedBox(width: 10),
                          Text(
                            'View items',
                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: 100),
                          Icon(Icons.remove_circle_outline, color: Colors.white),
                          SizedBox(width: 40),
                          Text(
                            '1',
                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: 50),
                          Icon(Icons.add_circle_outline, color: Colors.white),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
