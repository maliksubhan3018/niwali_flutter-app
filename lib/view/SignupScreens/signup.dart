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

  final _formKey = GlobalKey<FormState>();

  final nameController = TextEditingController();
  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.greenLight,
      appBar: const AppBarWidget(title: "Sign up"),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 20),

                Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Image.asset(
                          MyImages.niwalilogowhite,
                          height: 50,
                        ),
                      ),
                      SizedBox(height: 15),
                      Text(
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

                SizedBox(height: 5),

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
                SizedBox(height: 8),

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
                SizedBox(height: 8),

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
                SizedBox(height: 8),

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

                SizedBox(height: 2),

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
                    Text("Agree with ", style: TextStyle(color: Colors.white)),
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

                SizedBox(height: 5),

                CustomButton(
                  text: "Sign up",
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                 Get.toNamed(MyPagesName.login);
                      if (!agree) {
                        Get.snackbar(
                          "Error",
                          "Please agree to the Terms & Conditions",
                          backgroundColor: Colors.redAccent,
                          colorText: Colors.white,
                        );
                      } else {
                        Get.snackbar(
                          "Success",
                          "Form submitted successfully!",
                          backgroundColor: Colors.green,
                          colorText: Colors.white,
                        );
                      }
                    }
                  },
                ),

                const SizedBox(height: 5),

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

                SizedBox(height: 15),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
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
