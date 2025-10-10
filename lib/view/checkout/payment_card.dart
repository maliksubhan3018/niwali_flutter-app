import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';
import 'package:niwali_app/config/route_name.dart';
import 'package:niwali_app/widgets/app_bar.dart';
import 'package:niwali_app/widgets/color_widget.dart';
import 'package:niwali_app/widgets/custom_button.dart';
import 'package:niwali_app/widgets/image_widget.dart';
import 'package:niwali_app/widgets/widget_text_field.dart';

class PaymentCard extends StatelessWidget {
  const PaymentCard({super.key});

  @override
  Widget build(BuildContext context) {
    final nameController = TextEditingController();
    final phoneController = TextEditingController();
    final cvvController = TextEditingController();
    final expController = TextEditingController();
    final List<String> cardImages = [MyImages.card, MyImages.banner];

    return Scaffold(
      appBar: AppBarWidget(title: "payment"),
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(8),
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 10),

              CarouselSlider(
                options: CarouselOptions(
                  height: 180,
                  enlargeCenterPage: true,
                  enableInfiniteScroll: true,
                  viewportFraction: 0.85,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                ),
                items: cardImages.map((imagePath) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        clipBehavior: Clip.hardEdge,
                        child: Image.asset(
                          imagePath,
                          fit: BoxFit.cover,
                          width: double.infinity,
                        ),
                      );
                    },
                  );
                }).toList(),
              ),

              SizedBox(height: 10),

              CustomButton(
                text: 'Add new card',

                onPressed: () {
                  Get.toNamed(MyPagesName.newcard);
                },
              ),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Save card info '),

                  Checkbox(
                    value: true,
                    onChanged: (bool? value) {},
                    activeColor: AppColors.greenDark,
                  ),
                ],
              ),
              SizedBox(height: 30),
              CustomButton(
                text: 'Check Out',

                onPressed: () {
                  Get.toNamed(MyPagesName.order);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
