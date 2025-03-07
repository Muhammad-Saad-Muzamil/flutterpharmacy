import 'package:flutter/material.dart';
import 'package:pharmacy_app/colors.dart';


class CategoryCard extends StatelessWidget {
  final List<String> categories; // List of category names

  const CategoryCard({super.key, required this.categories});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Wrap(
        spacing: 8.0, // Horizontal space between buttons
        runSpacing: 4.0, // Vertical space between buttons
        children: categories.map((category) {
          return ChoiceChip(
            label: Text(
              category,
              style: TextStyle(
                fontSize: 14,
                color: AppColors.textColor, // Set text color
              ),
            ),
            selected: false,
            onSelected: (selected) {
              // Handle selection logic here
            },
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            backgroundColor: AppColors.backgroundColor, // Set background color
            selectedColor: AppColors.primaryColor, // Set selected background color
            labelStyle: TextStyle(
              color: AppColors.textColor, // Set text color
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
              side: BorderSide(
                color: AppColors.primaryColor, // Set border color
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}