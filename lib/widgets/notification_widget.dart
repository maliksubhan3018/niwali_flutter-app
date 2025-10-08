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
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Name
          Text(
            name,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 6),

          // Date with icon
          Row(
            children: [
              const Icon(
                Icons.access_time,
                size: 14,
                color: Colors.grey,
              ),
              const SizedBox(width: 6),
              Text(
                date,
                style: const TextStyle(
                  fontSize: 13,
                  color: Colors.grey,
                ),
              ),
            ],
          ),

          const SizedBox(height: 3),

          // Divider
          const Divider(thickness: 1, color: Colors.grey),

          const SizedBox(height: 4),

          // Description / message
          Text(
            message,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.black87,
              height: 1.4,
            ),
          ),
        ],
      ),
    );
  }
}