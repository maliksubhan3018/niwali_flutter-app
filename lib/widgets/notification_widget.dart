import 'package:flutter/material.dart';

class NotificationItem extends StatelessWidget {
  final String name;
  final String date;
  final String message;

  const NotificationItem({
    super.key,
    required this.name,
    required this.date,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
          ),
          SizedBox(height: 6),

          Row(
            children: [
              Icon(Icons.access_time, size: 14, color: Colors.grey),
              SizedBox(width: 6),
              Text(date, style: TextStyle(fontSize: 13, color: Colors.grey)),
            ],
          ),

          SizedBox(height: 3),

          Divider(thickness: 1, color: Colors.grey),

          SizedBox(height: 4),

          Text(
            message,
            style: TextStyle(fontSize: 14, color: Colors.black87, height: 1.4),
          ),
        ],
      ),
    );
  }
}
