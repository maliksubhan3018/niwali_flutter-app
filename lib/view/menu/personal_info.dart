import 'package:flutter/material.dart';
import 'package:niwali_app/widgets/app_bar.dart';

import 'package:niwali_app/widgets/custom_button.dart';
import 'package:niwali_app/widgets/widget_text_field.dart';

class PersonalInfo extends StatefulWidget {
  const PersonalInfo({super.key});

  @override
  State<PersonalInfo> createState() => _PersonalInfoState();
}

class _PersonalInfoState extends State<PersonalInfo> {
  late TextEditingController _nameController;
  late TextEditingController _phoneController;
  late TextEditingController _passwordController;
  late TextEditingController _addressController;
  // ignore: prefer_final_fields
  bool _obscurePassword = true;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: 'Name');
    _phoneController = TextEditingController(text: '02313121230');
    _passwordController = TextEditingController();
    _addressController = TextEditingController(text: 'Town, City, Country');
  }

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    _passwordController.dispose();
    _addressController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: const AppBarWidget(title: "personal information"),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              const SizedBox(height: 20),
              Center(
                child: GestureDetector(
                  onTap: () {
                  },
                  child: Stack(
                    children: [
                      CircleAvatar(
                        radius: 60,
                        backgroundColor: Colors.grey[300],
                        child: const Icon(
                          Icons.person,
                          size: 60,
                          color: Colors.grey,
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          padding: const EdgeInsets.all(4),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.camera_alt,
                            color: Colors.green,
                            size: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              CustomField(
                labelText: 'Full Name',
                controller: _nameController,
              ),
              const SizedBox(height: 10),
              CustomField(
                labelText: 'Phone Number',
                controller: _phoneController,
                isNumeric: true,
              ),
              const SizedBox(height: 10),
              CustomField(
                labelText: 'Password',
                controller: _passwordController,
                obscureText: _obscurePassword,
               
              ),
              const SizedBox(height: 10),
              CustomField(
                labelText: 'Address',
                controller: _addressController,
                suffixIcon: Container(
                  margin: const EdgeInsets.only(right: 16),
                  width: 6,
                  height: 6,
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              CustomButton(
                text: 'Update',
                onPressed: () {
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}