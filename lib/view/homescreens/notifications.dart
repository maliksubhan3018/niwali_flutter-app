import 'package:flutter/material.dart';
import 'package:niwali_app/widgets/app_bar.dart';
import 'package:niwali_app/widgets/notification_widget.dart';
 // Import the new file

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: const AppBarWidget(),
      body: Column(
        children: [
          NotificationItem(
            name: "Ronald Richards",
            date: "13 Sep, 2020",
            message: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque malesuada eget vitae.",
          ),
          // Add more NotificationItem widgets as needed
        ],
      ),
    );
  }
}