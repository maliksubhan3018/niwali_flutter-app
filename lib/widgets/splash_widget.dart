import 'package:flutter/material.dart';
import 'package:niwali_app/widgets/color_widget.dart';

class SplashContent extends StatelessWidget {
  final String imagePath;
  final String heading;
  final String bodyText;
  final VoidCallback? onSkip;
  final VoidCallback? onNext;
  final bool showDots;
  final bool showSkip;
  final String buttonText;
  final int? currentPage; // 👈 Added field for active dot

  const SplashContent({
    super.key,
    required this.imagePath,
    required this.heading,
    required this.bodyText,
    this.onSkip,
    this.onNext,
    this.showDots = true,
    this.showSkip = true,
    this.buttonText = 'Next',
    this.currentPage, // 👈 Added to constructor
  });

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final containerHeight = screenHeight / 2;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: containerHeight,
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(30.0),
                ),
              ),
              child: Center(
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.contain,
                  width: 300,
                  height: 250,
                ),
              ),
            ),
          ),

          // Bottom section
          SizedBox(
            height: containerHeight,
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xFF1EAB70),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(50)),
              ),
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        heading,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 12.0),
                      Text(
                        bodyText,
                        style: const TextStyle(
                          fontSize: 12.0,
                          color: Colors.white,
                          height: 1.5,
                        ),
                        textAlign: TextAlign.center,
                      ),

                      // 👇 Updated dots (only when showDots = true)
                      if (showDots) ...[
                        const SizedBox(height: 16.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(3, (index) {
                            bool isActive = (index + 1) == currentPage;
                            return AnimatedContainer(
                              duration: const Duration(milliseconds: 300),
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 4.0),
                              height: 8,
                              width: 8,
                              decoration: BoxDecoration(
                                color: isActive
                                    ? Colors.white
                                    : Colors.grey.shade400,
                                shape: BoxShape.circle,
                              ),
                            );
                          }),
                        ),
                      ],
                    ],
                  ),

                  const SizedBox(height: 24.0),

                  // Buttons
                  if (showSkip) ...[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TextButton(
                          onPressed: onSkip,
                          child: const Text(
                            'Skip',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: onNext,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.greenDark,
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 32.0,
                              vertical: 12.0,
                            ),
                          ),
                          child: Text(
                            buttonText,
                            style: const TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ] else ...[
                    ElevatedButton(
                      onPressed: onNext,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF1EAB70),
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 32.0,
                          vertical: 12.0,
                        ),
                      ),
                      child: Text(
                        buttonText,
                        style: const TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}