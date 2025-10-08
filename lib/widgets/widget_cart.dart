import 'package:flutter/material.dart';
import 'package:niwali_app/widgets/color_widget.dart';

class CartItemWidget extends StatelessWidget {
  final String name;
  final String price;
  final int quantity;
  final String imageAsset;

  const CartItemWidget({
    super.key,
    required this.name,
    required this.price,
    required this.quantity,
    required this.imageAsset,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.greenLight,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  imageAsset,
                  width: 70,
                  height: 80,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      color: AppColors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(height: 5,),
                  Text(
                    '\$$price',
                    style: TextStyle(
                      color: AppColors.white,
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    '\$$price',
                    style: TextStyle(
                      color: AppColors.white,
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 5, right: 10),
                child: IconButton(
                  icon: const Icon(Icons.delete_outline, color: Colors.white, size: 20),
                  onPressed: () {
                    // Add delete functionality here
                  },
                  style: IconButton.styleFrom(
                    shape: const CircleBorder(),
                    padding: EdgeInsets.zero,
                    minimumSize: const Size(20, 20),
                    backgroundColor: Colors.transparent,
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.remove, color: AppColors.greenDark, size: 20),
                    onPressed: () {},
                    style: IconButton.styleFrom(
                      shape: const CircleBorder(),
                      padding: const EdgeInsets.all(2), // Reduced padding for smaller background
                      backgroundColor: AppColors.white,
                    ),
                  ),
                  const SizedBox(width: 3),
                  Text(
                    '$quantity',
                    style: TextStyle(color: AppColors.white),
                  ),
                  const SizedBox(width: 3),
                  IconButton(
                    icon: const Icon(Icons.add, color: AppColors.greenLight, size: 20),
                    onPressed: () {},
                    style: IconButton.styleFrom(
                      shape: const CircleBorder(),
                      padding: const EdgeInsets.all(2), // Reduced padding for smaller background
                      backgroundColor: AppColors.white,
                    ),
                  ),
                  SizedBox(width: 5,),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}