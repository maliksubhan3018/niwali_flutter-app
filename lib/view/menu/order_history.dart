import 'package:flutter/material.dart';
import 'package:niwali_app/widgets/app_bar.dart';
import 'package:niwali_app/widgets/color_widget.dart';

class OrderHistory extends StatelessWidget {
  const OrderHistory({super.key});

  void _showOrderDetails(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: BorderSide(color: AppColors.greenDark),
        ),
        // remove AlertDialog's internal default padding
        contentPadding: EdgeInsets.all(8),

        content: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Order #21453",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                  Text("Jan 10, 2019", style: TextStyle(fontSize: 12)),
                ],
              ),
              SizedBox(height: 8),
              Row(
                children: [
                  Icon(Icons.local_shipping, color: Colors.blue),
                  SizedBox(width: 4),
                  Text("Shipped", style: TextStyle(color: Colors.blue)),
                ],
              ),
              SizedBox(height: 16),
              _buildItemRow("Strandmond", "2 pcs", "\$295.63"),
              Divider(),
              _buildItemRow("Mellyby", "1 pcs", "\$465.23"),
              Divider(),
              _buildItemRow("Maisa", "1 pcs", "\$162.43"),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "© 7309 Hudson, Los Angeles",
                    style: TextStyle(fontSize: 8, color: Colors.grey),
                  ),
                  Text(
                    "Total \$924.52",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
                  ),
                ],
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text("Close"),
          ),
        ],
      ),
    );
  }

  Widget _buildItemRow(String item, String qty, String price) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Text(item), Text(qty), Text(price)],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(title: "Order History"),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(12),
        child: SafeArea(
          child: Column(
            children: [
              GestureDetector(
                onTap: () => _showOrderDetails(context),
                child: OrderCard(
                  orderId: "Order #21453",
                  date: "Jan 10, 2019",
                  items: "Items 3",
                  price: "Total \$924.52",
                  status: "Shipped",
                  statusColor: Colors.green,
                  transactionId: "T. ID: N/A",
                ),
              ),
              SizedBox(height: 12),
            ],
          ),
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
      padding: EdgeInsets.all(6),
      decoration: BoxDecoration(
        color: AppColors.greenLight,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                orderId,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(date, style: TextStyle(color: Colors.white, fontSize: 12)),
            ],
          ),
          SizedBox(height: 4),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(items, style: TextStyle(color: Colors.white)),
              Text(
                price,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          Divider(color: Colors.white70, thickness: 0.5),
          SizedBox(height: 6),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.circle, color: statusColor, size: 12),
                  SizedBox(width: 6),
                  Text(
                    status,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              Text(
                transactionId,
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
