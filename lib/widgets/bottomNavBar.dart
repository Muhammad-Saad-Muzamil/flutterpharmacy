import 'package:flutter/material.dart';
import 'package:pharmacy_app/colors.dart';


class BottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onTabChange;

  const BottomNavBar({
    super.key,
    required this.selectedIndex,
    required this.onTabChange,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: AppColors.backgroundColor, // Set background color
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildNavItem(Icons.home, "Home", 0),
          _buildNavItem(Icons.list, "Orders", 1),
          _buildNavItem(Icons.medication, "Prescriptions", 2),
        ],
      ),
    );
  }

  Widget _buildNavItem(IconData icon, String label, int index) {
    return GestureDetector(
      onTap: () => onTabChange(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: selectedIndex == index
                ? AppColors.primaryColor // Selected icon color
                : AppColors.textColor.withOpacity(0.5), // Unselected icon color
            size: selectedIndex == index ? 30 : 24,
          ),
          const SizedBox(height: 4), // Add spacing between icon and text
          Text(
            label,
            style: TextStyle(
              color: selectedIndex == index
                  ? AppColors.primaryColor // Selected text color
                  : AppColors.textColor.withOpacity(0.5), // Unselected text color
              fontWeight: selectedIndex == index ? FontWeight.bold : FontWeight.normal,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}