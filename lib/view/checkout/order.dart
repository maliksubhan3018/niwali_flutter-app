import 'package:flutter/material.dart';
import 'package:niwali_app/widgets/app_bar.dart';

class Order extends StatelessWidget {
  const Order({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(title: "Order Confirm"),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(children: [
            


          ],
            
          ),
        ),
      ),
    );
  }
}