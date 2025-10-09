import 'package:flutter/material.dart';
import 'package:niwali_app/widgets/color_widget.dart';

class CustomField extends StatelessWidget {
  final String labelText;
  final TextEditingController controller;
  final bool isNumeric;
  final bool obscureText;
  final Widget? suffixIcon;

  const CustomField({
    super.key,
    required this.labelText,
    required this.controller,
    this.isNumeric = false,
    this.obscureText = false,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        TextField(
          controller: controller,
          keyboardType: isNumeric ? TextInputType.number : TextInputType.text,
          obscureText: obscureText,
          style: const TextStyle(color: Colors.white),
          decoration: InputDecoration(
            border: InputBorder.none,
            filled: true,
            fillColor: AppColors.greenLight,
            hintText: isNumeric ? 'Enter number' : 'Enter text',
            hintStyle: TextStyle(color: Colors.white70),
            contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 0),
            suffixIcon: suffixIcon,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide.none,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ],
    );
  }
}