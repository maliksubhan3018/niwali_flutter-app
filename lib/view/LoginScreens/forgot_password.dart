import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:niwali_app/config/route_name.dart';
import 'package:niwali_app/widgets/color_widget.dart';
import 'package:niwali_app/widgets/custom_button.dart';

import 'package:niwali_app/widgets/custom_textfield.dart';
import 'package:niwali_app/widgets/image_widget.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.greenLight,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Logo
               Image.asset(
                MyImages.niwalilogowhite,
                height: 70,
              ),
              const SizedBox(height: 48.0),
        
              // Title
              Align(alignment: AlignmentGeometry.topLeft,
                child: const Text(
                  'Forgot Password',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 8),
        
              // Descriptive text
              const Text(
                
'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.white70,
                  height: 1.5,
                ),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 32.0),
        
              // Email field
              CustomTextField(
                labelText: 'Email',
                icon: Icons.email,
                obscureText: false,
                // Add controller and validator if needed
              ),
              const SizedBox(height: 24.0),
        
              // Verify button
              CustomButton(
                text: 'Verify',
                onPressed: () {
                   Get.toNamed(
                          MyPagesName.confirmcode,
                        );
                  // Handle verify action
                },
                isPrimary: true,
              ),
              
        
              // Bottom text
              
            ],
          ),
        ),
      ),
    );
  }
}