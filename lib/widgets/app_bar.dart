import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:niwali_app/widgets/color_widget.dart'; // your custom colors file

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({super.key});

  // This function extracts the page name from the current route.
  String _getPageTitle() {
    final route = Get.currentRoute;
    if (route == "/" || route.isEmpty) return "Home";

    // Remove slashes and capitalize
    final name = route.replaceAll("/", "");
    return name.isNotEmpty
        ? name[0].toUpperCase() + name.substring(1)
        : "Page";
  }

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
        _getPageTitle(),
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