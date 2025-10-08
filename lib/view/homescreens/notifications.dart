import 'package:flutter/material.dart';
import 'package:niwali_app/widgets/notification_widget.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: const [
            NotificationItem(
              name: "Ronald Richards",
              date: "13 Sep, 2020",
              message:
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque malesuada eget vitae.",
            ),
            SizedBox(height: 10),
            NotificationItem(
              name: "Eleanor Pena",
              date: "15 Sep, 2020",
              message:
                  "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
            ),
            SizedBox(height: 10),
            NotificationItem(
              name: "Wade Warren",
              date: "18 Sep, 2020",
              message:
                  "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
            ),
          ],
        ),
      ),
    );
  }
}