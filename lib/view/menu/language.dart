// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:niwali_app/widgets/app_bar.dart';
import 'package:niwali_app/widgets/color_widget.dart';

class Language extends StatefulWidget {
  const Language({super.key});

  @override
  State<Language> createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
  int? selectedIndex;
  final TextEditingController _searchController = TextEditingController();

  final List<Map<String, dynamic>> languages = [
    {'flag': 'us', 'name': 'English (United States)'},
    {'flag': 'gb', 'name': 'English (United Kingdom)'},
    {'flag': 'pk', 'name': 'Urdu (Pakistan)'},
    {'flag': 'ca', 'name': 'English (Canada)'},
    {'flag': 'fr', 'name': 'French'},
    {'flag': 'de', 'name': 'German'},
    {'flag': 'es', 'name': 'Spanish'},
    {'flag': 'it', 'name': 'Italian'},
    {'flag': 'ja', 'name': 'Japanese'},
  ];

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar:  AppBarWidget( title: "Languages",),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Search...',
                prefixIcon: const Icon(Icons.search, color: Colors.green),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
                  borderSide: const BorderSide(color: Colors.green, width: 1.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
                  borderSide: const BorderSide(color: Colors.green, width: 1.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
                  borderSide: const BorderSide(color: Colors.green, width: 2.0),
                ),
                contentPadding: const EdgeInsets.symmetric(vertical: 10.0),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              itemCount: languages.length,
              itemBuilder: (context, index) {
                final lang = languages[index];
                final isSelected = selectedIndex == index;
                return Container(
                  margin: const EdgeInsets.only(bottom: 8.0),
                  decoration: BoxDecoration(
                    color: isSelected ? AppColors.greenDark : AppColors.greenLight,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                    leading: CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.transparent,
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: _getFlagColor(lang['flag']),
                        ),
                        child: Center(
                          child: Text(
                            lang['flag'].toString().toUpperCase(),
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                    ),
                    title: Text(
                      lang['name'],
                      style: TextStyle(
                        color: isSelected ? Colors.white : Colors.black87,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    trailing: Radio<int>(
                      value: index,
                      groupValue: selectedIndex,
                      onChanged: (value) {
                        setState(() {
                          selectedIndex = value;
                        });
                      },
                      activeColor: Colors.white,
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Color _getFlagColor(String flagCode) {
    switch (flagCode) {
      case 'us':
        return Colors.red;
      case 'gb':
        return Colors.blue;
      case 'pk':
        return Colors.green;
      case 'ca':
        return Colors.red;
      case 'fr':
        return Colors.blue;
      case 'de':
        return Colors.black;
      case 'es':
        return Colors.red;
      case 'it':
        return Colors.green;
      case 'ja':
        return Colors.white;
      default:
        return Colors.grey;
    }
  }
}