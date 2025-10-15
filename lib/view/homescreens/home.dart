import 'package:flutter/material.dart';
import 'package:niwali_app/view/homescreens/cart.dart';
import 'package:niwali_app/view/homescreens/custom_bottom_navbar.dart';
import 'package:niwali_app/view/homescreens/notifications.dart';
import 'package:niwali_app/view/homescreens/profile.dart';
//import 'package:niwali_app/widgets/app_bar.dart';

import 'package:niwali_app/widgets/widget_io.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isGridView = true;
  int _currentIndex = 0;

  final List<Map<String, dynamic>> items = [
    {
      'name': 'Janda Bolong',
      'description': 'Agung Suka Family',
      'price': '\$850',
      'imagePath': MyImages.product1,
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
      'name': 'Aloe',
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
      'quantity': 3,
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
  ];

  String _getTitleFromIndex() {
    switch (_currentIndex) {
      case 0:
        return 'Home';
      case 1:
        return 'Cart';
      case 2:
        return 'Notifications';
      case 3:
        return 'Profile';
      default:
        return 'my';
    }
  }

  Widget buildHomeBody() {
    return Column(
      children: [
        Container(
          height: 60, // Adjusted height to match app bar style
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xFF014B34), Color(0xFF2B7B77), Color(0xFF108A00), Color(0xFF1AE906)],
              stops: [0.0, 0.3686, 0.7802, 1.0],
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/project_images/niwali logo (1).png',
                height: 40,
              ),
              const Spacer(),
              IconButton(
                icon: const Icon(Icons.shopping_cart, color: Colors.white),
                onPressed: () {
                  // Handle cart icon tap
                },
              ),
            ],
          ),
        ),
        Container(
          height: 200,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(MyImages.banner),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'All items',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Favorites toggled')),
                      );
                    },
                    icon: const Icon(
                      Icons.favorite_border,
                      color: AppColors.greenDark,
                    ),
                  ),
                  IconButton(
                    onPressed: () => setState(() => isGridView = true),
                    icon: Icon(
                      Icons.grid_view,
                      color: isGridView ? AppColors.greenDark : Colors.grey,
                    ),
                  ),
                  IconButton(
                    onPressed: () => setState(() => isGridView = false),
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
        Expanded(
          child: isGridView
              ? GridView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.74,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                  ),
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    final item = items[index];
                    return GridHomeWidget(
                      name: item['name'],
                      description: item['description'],
                      price: item['price'],
                      imagePath: item['imagePath'],
                      quantity: item['quantity'],
                    );
                  },
                )
              : ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
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
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _currentIndex == 0 ? null : AppBarWidget(title: _getTitleFromIndex()),
      body: IndexedStack(
        index: _currentIndex,
        children: [
          buildHomeBody(),
          const Cart(),
          const Notifications(),
          const Profile(),
        ],
      ),
      bottomNavigationBar: CustomBottomNavBar(
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
      ),
    );
  }
}