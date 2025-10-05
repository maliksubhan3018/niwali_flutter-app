import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:niwali_app/config/route_name.dart';
import 'package:niwali_app/widgets/color_widget.dart';
import 'package:niwali_app/widgets/custom_textfield.dart';
import 'package:niwali_app/widgets/image_widget.dart';
import 'package:niwali_app/widgets/custom_button.dart'; // ✅ import custom button

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool agree = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.greenLight, // main green background
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 40),

              // 🔹 Logo
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Image.asset(MyImages.niwalilogowhite, height: 50),
                    ),
                    const SizedBox(height: 15),
                    const Text(
                      "Create Account",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 5),

              // 🔹 Name
              const CustomTextField(labelText: "Name", icon: Icons.person),
              const SizedBox(height: 8),

              // 🔹 Username
              const CustomTextField(labelText: "Username", icon: Icons.person),
              const SizedBox(height: 8),

              // 🔹 Email
              const CustomTextField(labelText: "Email", icon: Icons.email),
              const SizedBox(height: 8),

              // 🔹 Password
              const CustomTextField(
                labelText: "Password",
                icon: Icons.lock,
                obscureText: true,
              ),
              const SizedBox(height: 8),

              // 🔹 Confirm Password
              const CustomTextField(
                labelText: "Confirm Password",
                icon: Icons.lock,
                obscureText: true,
              ),

              const SizedBox(height: 2),

              // 🔹 Terms & Conditions checkbox
              Row(
                children: [
                  Checkbox(
                    value: agree,
                    onChanged: (value) {
                      setState(() {
                        agree = value ?? false;
                      });
                    },
                    activeColor: Colors.white,
                    checkColor: AppColors.greenDark,
                  ),
                  Text(
                    "Agree with ",
                    style: const TextStyle(color: Colors.white),
                  ),
                  TextButton(
                    onPressed: () {
                       Get.toNamed(
                          MyPagesName.termsconditions,
                        );
                      // Navigate to Terms & Conditions screen or show dialog
                      // Add your navigation logic here
                    },
                    child: Text(
                      "Terms & Condition.",
                      style: TextStyle(
                        color: AppColors.parrotgreen,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 10),

              // 🔹 Custom Sign Up Button
              CustomButton(
                text: "Sign up",
                onPressed: () {
                  // handle sign up
                },
              ),

              const SizedBox(height: 5),

              // 🔹 Already have account
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already Have an Account? ",
                    style: TextStyle(color: Colors.white),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(MyPagesName.login);
                      // Navigate to Login screen
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(
                        color: AppColors.parrotgreen,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 25),

              // 🔹 Register as Distributor
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Register as a ',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.all(2),
                      minimumSize: Size(0, 0),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Distributor!',
                      style: TextStyle(
                        color: AppColors.parrotgreen,
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
