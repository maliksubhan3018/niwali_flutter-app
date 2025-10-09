import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:niwali_app/config/route_name.dart';
import 'package:niwali_app/widgets/color_widget.dart';
import 'package:niwali_app/widgets/custom_list_tile.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Your Profile😊",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: AppColors.greenLight,
              ),
              height: 100,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.grey[200],
                    radius: 25,
                    child: Icon(Icons.person, color: Colors.grey[400]),
                  ),
                  title: Text(
                    'Mr Alex',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    'xyz@email.com',
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                  trailing: GestureDetector(
                    onTap: () {
                      Get.toNamed(MyPagesName.personalinfo);
                    },
                    child: Icon(
                      Icons.edit,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "More",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            CustomListTile(icon: Icons.settings, title: 'Account Settings'),
            SizedBox(height: 4),
            CustomListTile(icon: Icons.history, title: 'Order History',
            onTap: () {
    Get.toNamed(MyPagesName.orderhistory);
  },),
            SizedBox(height: 4),
            CustomListTile(icon: Icons.payment, title: 'Payment Method'),
            SizedBox(height: 4),
            CustomListTile(icon: Icons.favorite, title: 'My Favorites'),
            SizedBox(height: 4),
            CustomListTile(
  icon: Icons.language,
  title: 'Language',
  onTap: () {
    Get.toNamed(MyPagesName.language);
  },
),
            SizedBox(height: 4),
            CustomListTile(
              icon: Icons.logout,
              title: 'Log Out',
              iconColor: Colors.red,
              textColor: AppColors.white,
            ),
          ],
        ),
      ),
    );
  }
}