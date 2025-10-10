import 'package:flutter/material.dart';
import 'package:niwali_app/widgets/color_widget.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final bool isPrimary;
  final double wsize;
  final double radious;

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.isPrimary = true,
    this.wsize = double.infinity,
    this.radious = 16,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: wsize,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.greenDark,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radious),
          ),
          padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
        ),
        child: Text(
          text,
          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
