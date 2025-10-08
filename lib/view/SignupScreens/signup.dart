import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:niwali_app/config/route_name.dart';
import 'package:niwali_app/widgets/app_bar.dart';
import 'package:niwali_app/widgets/color_widget.dart';
import 'package:niwali_app/widgets/custom_text_form_field.dart';
import 'package:niwali_app/widgets/image_widget.dart';
import 'package:niwali_app/widgets/custom_button.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool agree = false;

  // 🔹 Add a global form key for validation
  final _formKey = GlobalKey<FormState>();

  // 🔹 Text editing controllers (optional but helpful)
  final nameController = TextEditingController();
  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.greenLight,
       appBar: const AppBarWidget( title: "Sign up",),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
          child: Form( // 🔹 Wrap everything in a Form
            key: _formKey,
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
                CustomTextField(
                  labelText: "Name",
                  icon: Icons.person,
                  controller: nameController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter your name";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 8),

                // 🔹 Username
                CustomTextField(
                  labelText: "Username",
                  icon: Icons.person,
                  controller: usernameController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter a username";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 8),

                // 🔹 Email
                CustomTextField(
                  labelText: "Email",
                  icon: Icons.email,
                  controller: emailController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter your email";
                    }
                    if (!value.contains("@")) {
                      return "Enter a valid email";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 8),

                // 🔹 Password
                CustomTextField(
                  labelText: "Password",
                  icon: Icons.lock,
                  obscureText: true,
                  controller: passwordController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter a password";
                    }
                    if (value.length < 6) {
                      return "Password must be at least 6 characters";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 8),

                // 🔹 Confirm Password
                CustomTextField(
                  labelText: "Confirm Password",
                  icon: Icons.lock,
                  obscureText: true,
                  controller: confirmPasswordController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please confirm your password";
                    }
                    if (value != passwordController.text) {
                      return "Passwords do not match";
                    }
                    return null;
                  },
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
                    const Text(
                      "Agree with ",
                      style: TextStyle(color: Colors.white),
                    ),
                    TextButton(
                      onPressed: () {
                        Get.toNamed(MyPagesName.termsconditions);
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

                // 🔹 Sign Up Button
                CustomButton(
                  text: "Sign up",
                  onPressed: () {
                    Get.toNamed(
                          MyPagesName.login,
                        );
                    if (_formKey.currentState!.validate()) {
                      if (!agree) {
                        Get.snackbar("Error", "Please agree to the Terms & Conditions",
                            backgroundColor: Colors.redAccent,
                            colorText: Colors.white);
                      } else {
                        Get.snackbar("Success", "Form submitted successfully!",
                            backgroundColor: Colors.green,
                            colorText: Colors.white);
                        // Add your signup logic here
                      }
                    }
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
      ),
    );
  }
}
