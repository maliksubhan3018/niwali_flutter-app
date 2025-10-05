import 'package:flutter/material.dart';
import 'package:niwali_app/widgets/color_widget.dart';
import 'package:niwali_app/widgets/custom_button.dart';
import 'package:niwali_app/widgets/image_widget.dart';

class ConfirmCode extends StatelessWidget {
  const ConfirmCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.greenLight,
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo
            Image.asset(
                MyImages.niwalilogowhite,
                height: 70,
              ),
            const SizedBox(height: 100),

            // Title
            Align(alignment: AlignmentGeometry.topLeft,
              child: const Text(
                'Enter your OTP code here.',
                style: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 8),

            // OTP Input Boxes
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(5, (index) {
                return SizedBox(
                  width: 50,
                  height: 50,
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: const InputDecoration(
                      counterText: '',
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        borderSide: BorderSide(color: AppColors.greenDark, width: 2),
                      ),
                    ),
                  ),
                );
              }),
            ),
            const SizedBox(height: 32.0),

            // Confirm Button
            CustomButton(
              text: 'Confirm',
              onPressed: () {
                // Handle confirm OTP action
              },
              isPrimary: true,
            ),
            const SizedBox(height: 24.0),

            // Resend Link
            Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Dont receive the OTP?',
                      style: TextStyle(color: Colors.white),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.all(2),
                        minimumSize: Size(0, 0),
                      ),
                      onPressed: () {
                        //Get.toNamed(
                          //MyPagesName.signup,
                        //); // ✅ navigate to Sign Up page
                      },
                      child: const Text(
                        'Resend.',
                        style: TextStyle(
                          color: AppColors.parrotgreen,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ],
                ),
          ],
        ),
      ),
    );
  }
}