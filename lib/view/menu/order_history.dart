import 'package:flutter/material.dart';
import 'package:niwali_app/widgets/app_bar.dart';

class OrderHistory extends StatelessWidget {
  const OrderHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: const AppBarWidget(title: "Order History"),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: const [
            OrderCard(
              orderId: "Order ID",
              date: "15 Oct, 2023",
              items: "Items 6",
              price: "\$350",
              status: "Status",
              statusColor: Colors.green,
              transactionId: "T. ID: 21312313",
            ),
            SizedBox(height: 12),
            OrderCard(
              orderId: "Order ID",
              date: "15 Oct, 2023",
              items: "Items 6",
              price: "\$350",
              status: "Pending",
              statusColor: Colors.red,
              transactionId: "T. ID: 21312313",
            ),
            SizedBox(height: 12),
            OrderCard(
              orderId: "Order ID",
              date: "15 Oct, 2023",
              items: "Items 6",
              price: "\$350",
              status: "On way",
              statusColor: Colors.blue,
              transactionId: "T. ID: 21312313",
            ),
          ],
        ),
      ),
    );
  }
}

class OrderCard extends StatelessWidget {
  final String orderId;
  final String date;
  final String items;
  final String price;
  final String status;
  final Color statusColor;
  final String transactionId;

  const OrderCard({
    super.key,
    required this.orderId,
    required this.date,
    required this.items,
    required this.price,
    required this.status,
    required this.statusColor,
    required this.transactionId,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xFF19A45B), // green card color
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Top row: Order ID + Date
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                orderId,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                date,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
            ],
          ),

          const SizedBox(height: 4),

          // Second row: Items + Price
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                items,
                style: const TextStyle(color: Colors.white),
              ),
              Text(
                price,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),

          const SizedBox(height: 8),
          const Divider(color: Colors.white70, thickness: 0.5),
          const SizedBox(height: 6),

          // Bottom row: Status + T.ID
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.circle, color: statusColor, size: 12),
                  const SizedBox(width: 6),
                  Text(
                    status,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              Text(
                transactionId,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}