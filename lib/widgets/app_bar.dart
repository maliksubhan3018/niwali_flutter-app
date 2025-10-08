// lib/widgets/app_bar.dart
import 'package:flutter/material.dart';
import 'package:niwali_app/widgets/color_widget.dart'; // your custom colors file

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const AppBarWidget({super.key, this.title = 'home'});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.greenDark, // your theme color
      elevation: 0,
      centerTitle: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30), // 👈 curve only bottom-left
        ),
      ),
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}