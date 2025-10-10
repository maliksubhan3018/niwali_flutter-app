// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:niwali_app/config/route_name.dart';
import 'package:niwali_app/widgets/app_bar.dart';
import 'package:niwali_app/widgets/custom_button.dart';
import 'package:niwali_app/widgets/widget_text_field.dart';

class NewCard extends StatefulWidget {
  const NewCard({super.key});

  @override
  State<NewCard> createState() => _NewCardState();
}

class _NewCardState extends State<NewCard> {
  int _selectedIndex = 0; 

  @override
  Widget build(BuildContext context) {
    final nameController = TextEditingController();
    final phoneController = TextEditingController();
    final cvvController = TextEditingController();
    final expController = TextEditingController();

    return Scaffold(
      appBar:  AppBarWidget(title: "Add New Card"),
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.all(8),
          child: Column(
            children: [
              paymentbuttons(),
               SizedBox(height: 20),
              CustomField(labelText: 'Card Owner', controller: nameController),
              CustomField(
                labelText: 'Card Number',
                controller: phoneController,
                isNumeric: true,
              ),
              Row(
                children: [
                  Expanded(
                    child: CustomField(
                      labelText: 'EXP',
                      controller: expController,
                      isNumeric: true,
                    ),
                  ),
                   SizedBox(width: 8.0),
                  Expanded(
                    child: CustomField(
                      labelText: 'CVV',
                      controller: cvvController,
                      isNumeric: true,
                    ),
                  ),
                ],
              ),
               SizedBox(height: 20),
              SizedBox(
                width: 300,
                child: CustomButton(
                  text: 'Add',
                  onPressed: () {
                    Get.toNamed(MyPagesName.paymentcard);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget paymentbuttons() {
    final paymentOptions = [
      {'icon': Icons.credit_card, 'color': Colors.orange},
      {'icon': Icons.payment, 'color': Colors.blue},
      {'icon': Icons.account_balance, 'color': Colors.black},
    ];

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: paymentOptions.asMap().entries.map((entry) {
        final index = entry.key;
        final option = entry.value;
        final isSelected = _selectedIndex == index;

        return GestureDetector(
          onTap: () {
            setState(() {
              _selectedIndex = index;
            });
          },
          child: Container(
            margin:  EdgeInsets.all(5),
            width: 90,
            height: 60,
            decoration: BoxDecoration(
              color: isSelected
                  ? (option['color'] as Color).withOpacity(0.1)
                  : Colors.white,
              border: Border.all(
                color: isSelected
                    ? (option['color'] as Color)
                    : Colors.black,
               width: isSelected ? 2 : 1,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(
              option['icon'] as IconData,
              color: option['color'] as Color,
              size: 30,
            ),
          ),
        );
      }).toList(),
    );
  }
}
