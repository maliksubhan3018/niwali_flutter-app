import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:niwali_app/config/route_name.dart';
import 'package:niwali_app/widgets/app_bar.dart';
import 'package:niwali_app/widgets/color_widget.dart';
import 'package:niwali_app/widgets/custom_button.dart';
import 'package:niwali_app/widgets/widget_text_field.dart';

class Adress extends StatelessWidget {
  const Adress({super.key});

  @override
  Widget build(BuildContext context) {
    final nameController = TextEditingController();
    final phoneController = TextEditingController();
    final countryController = TextEditingController();
    final cityController = TextEditingController();
    final zipCode1Controller = TextEditingController();
    final zipCode2Controller = TextEditingController();
    final addressController = TextEditingController();

    return Scaffold(
      appBar:  AppBarWidget(title: "address"),
      body: Padding(
        padding:  EdgeInsets.all(8.0),
        child: Column(
          children: [
            CustomField(
              labelText: 'Name',
              controller: nameController,
            ),
            CustomField(
              labelText: 'Phone Number',
              controller: phoneController,
              isNumeric: true,
            ),
            Row(
              children: [
                Expanded(
                  child: CustomField(
                    labelText: 'Country',
                    controller: countryController,
                  ),
                ),
                 SizedBox(width: 8.0),
                Expanded(
                  child: CustomField(
                    labelText: 'City',
                    controller: cityController,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: CustomField(
                    labelText: 'Zip Code',
                    controller: zipCode1Controller,
                    isNumeric: true,
                  ),
                ),
                 SizedBox(width: 8.0),
                Expanded(
                  child: CustomField(
                    labelText: 'Zip Code',
                    controller: zipCode2Controller,
                    isNumeric: true,
                  ),
                ),
              ],
            ),
            CustomField(
              labelText: 'Address',
              controller: addressController,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Save as primary address'), 

                Checkbox(
                  value: true,
                  onChanged: (bool? value) {},
                  activeColor: AppColors.greenDark,
                ),
                
              ],
            ),
           SizedBox(height: 80,),
            CustomButton(
              text: 'Proceed',
              onPressed: () {
                Get.toNamed(MyPagesName.paymentcard);
              },
              
            ),
          ],
        ),
      ),
    );
  }
}