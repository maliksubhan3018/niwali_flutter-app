import 'package:flutter/material.dart';
import 'package:niwali_app/widgets/app_bar.dart';
import 'package:niwali_app/widgets/image_widget.dart';

class TermsConditions extends StatelessWidget {
  const TermsConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(title: "Terms & Conditions"),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(MyImages.niwalilogo, height: 100),
              SizedBox(height: 15),
              Align(
                alignment: AlignmentGeometry.topLeft,
                child: Text(
                  'Terms:',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 10),

              buildBulletText(
                'Niwali is a reliable supplier of a wide range of health and nutritional supplements.',
              ),
              buildBulletText(
                'We focus to produce supplements that are high in benefits. But all the products consist of all-natural, authentic organic ingredients.',
              ),
              buildBulletText(
                'Niwali is a breakthrough brand for supplements suitable for everyone who needs help to get healthier.',
              ),
              buildBulletText(
                'Niwali is a fully online store providing supplements of the best quality to customers assuring enhancement of health in no time.',
              ),
              buildBulletText(
                'Our products are genuine and certified by GMP (Good Manufacturing Practices), which is the highest standard for quality assurance in the supplement industry.',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildBulletText(String text) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("• ", style: TextStyle(fontSize: 18, height: 1.5)),
        Expanded(
          child: Text(text, style: TextStyle(fontSize: 16, height: 1.5)),
        ),
      ],
    );
  }
}
