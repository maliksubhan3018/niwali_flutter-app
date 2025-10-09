import 'package:flutter/material.dart';
import 'package:niwali_app/widgets/color_widget.dart';

class CustomListTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color? iconColor;
  final Color? textColor;
  final VoidCallback? onTap; 

  const CustomListTile({
    required this.icon,
    required this.title,
    this.iconColor,
    this.textColor,
    this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap, 
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 4),
        child: ListTile(
          tileColor: AppColors.greenLight,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          leading: Icon(icon, color: iconColor ?? Colors.white),
          title: Text(
            title,
            style: TextStyle(color: textColor ?? Colors.white),
          ),
          trailing: const Icon(Icons.arrow_forward_ios, color: Colors.white),
        ),
      ),
    );
  }
}