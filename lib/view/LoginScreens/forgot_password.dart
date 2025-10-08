import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:niwali_app/config/route_name.dart';
import 'package:niwali_app/widgets/app_bar.dart';
import 'package:niwali_app/widgets/color_widget.dart';
import 'package:niwali_app/widgets/custom_button.dart';
import 'package:niwali_app/widgets/custom_text_form_field.dart';
import 'package:niwali_app/widgets/image_widget.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
 
  final _formKey = GlobalKey<FormState>();

  
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.greenLight,
       appBar: const AppBarWidget( title: "Forgot",),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Form( 
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               
                Image.asset(
                  MyImages.niwalilogowhite,
                  height: 70,
                ),
                const SizedBox(height: 48.0),

              
                Align(
                  alignment: AlignmentGeometry.topLeft,
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

                // Email field with validation
                CustomTextField(
                  labelText: 'Email',
                  icon: Icons.email,
                  controller: emailController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter your email";
                    }
                    if (!value.contains('@') || !value.contains('.')) {
                      return "Please enter a valid email address";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 24.0),

                // Verify button
                CustomButton(
                  text: 'Verify',
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // ✅ If validation passes, navigate to confirm code screen
                      Get.toNamed(MyPagesName.confirmcode);
                    } else {
                      // ✅ If validation fails, show a message
                      Get.snackbar(
                        "Error",
                        "Please correct the highlighted errors",
                        backgroundColor: Colors.redAccent,
                        colorText: Colors.white,
                      );
                    }
                  },
                  isPrimary: true,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
