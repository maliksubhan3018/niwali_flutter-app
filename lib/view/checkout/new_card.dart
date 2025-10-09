import 'package:flutter/material.dart';
import 'package:niwali_app/widgets/app_bar.dart';

class NewCard extends StatelessWidget {
  const NewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: const AppBarWidget(title: "Add New Card"),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(children: [
            
          ],
            
          ),
        ),
      ),
    );
  }
}