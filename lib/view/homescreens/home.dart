// lib/screens/home.dart
import 'package:flutter/material.dart';
import 'package:niwali_app/widgets/app_bar.dart';
import 'package:niwali_app/widgets/color_widget.dart';
import 'package:niwali_app/widgets/image_widget.dart'; // Assuming this handles MyImages or similar
import 'package:niwali_app/widgets/list_home_widget.dart';
import 'package:niwali_app/widgets/grid_home_widget.dart';

// Assuming MyImages is defined in image_widget.dart or a similar file.
// Example definition (add this to image_widget.dart if not present):
// class MyImages {
//   static const String product1 = 'assets/images/product1.png';
//   static const String banner = 'assets/images/banner.png';
// }

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isGridView = true; // Default to grid view

  // Sample data based on the provided structure
  final List<Map<String, dynamic>> items = [
    {
      'name': 'Janda Bolong',
      'description': 'Agung Suka Family',
      'price': '\$850',
      'imagePath': MyImages.product1, // Ensure MyImages.product1 is defined
      'quantity': 5,
    },
    {
      'name': 'Vitamin C',
      'description': 'Agung Suka Family',
      'price': '\$850',
      'imagePath': MyImages.product1,
      'quantity': null,
    },
    {
      'name': 'Janda Bolong',
      'description': 'Agung Suka Family',
      'price': '\$850',
      'imagePath': MyImages.product1,
      'quantity': 2,
    },
    {
      'name': 'Aloe',
      'description': 'Agung Suka Family',
      'price': '\$850',
      'imagePath': MyImages.product1,
      'quantity': null,
    },
    {
      'name': 'Aloe',
      'description': 'Agung Suka Family',
      'price': '\$850',
      'imagePath': MyImages.product1,
      'quantity': null,
    },
    {
      'name': 'Aloe',
      'description': 'Agung Suka Family',
      'price': '\$850',
      'imagePath': MyImages.product1,
      'quantity': null,
    },
    {
      'name': 'Aloe',
      'description': 'Agung Suka Family',
      'price': '\$850',
      'imagePath': MyImages.product1,
      'quantity': null,
    },
    // Add more items as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: const AppBarWidget(),
      body: Column(
        children: [
          // Top banner image/section
          Container(
            height: 200.0,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(MyImages.banner), // Ensure MyImages.banner is defined
                fit: BoxFit.cover,
              ),
            ),
            
          ),
          // All items header with icons on the right
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Text(
                      'All items',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 8.0),
                   
                  ],
                ),
                Row(
                  children: [
                    // Heart icon (for favorites, toggle if needed)
                    IconButton(
                      onPressed: () {
                        // Toggle favorites logic here if needed
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Favorites toggled')),
                        );
                      },
                      icon: const Icon(Icons.favorite_border, color: AppColors.greenDark),
                    ),
                    // Grid icon
                    IconButton(
                      onPressed: () {
                        setState(() {
                          isGridView = true;
                        });
                      },
                      icon: Icon(
                        Icons.grid_view,
                        color: isGridView ? AppColors.greenDark : Colors.grey,
                      ),
                    ),
                    // List icon
                    IconButton(
                      onPressed: () {
                        setState(() {
                          isGridView = false;
                        });
                      },
                      icon: Icon(
                        Icons.list,
                        color: !isGridView ? AppColors.greenDark : Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // Items list or grid
          Expanded(
            child: isGridView
                ? GridView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.75,
                      crossAxisSpacing: 8.0,
                      mainAxisSpacing: 8.0,
                    ),
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      final item = items[index];
                      return GridHomeWidget( // Fixed typo: GridHomwWidget -> GridHomeWidget
                        name: item['name'],
                        description: item['description'],
                        price: item['price'],
                        imagePath: item['imagePath'],
                        quantity: item['quantity'],
                      );
                    },
                  )
                : ListView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      final item = items[index];
                      return ListHomeWidget(
                        name: item['name'],
                        description: item['description'],
                        price: item['price'],
                        imagePath: item['imagePath'],
                        quantity: item['quantity'],
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}