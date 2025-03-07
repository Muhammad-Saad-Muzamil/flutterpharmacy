import 'package:flutter/material.dart';
import 'package:pharmacy_app/colors.dart'; // Assuming you have the colors defined in AppColors

class ConsultationCard extends StatelessWidget {
  const ConsultationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      elevation: 3,
      color: AppColors.backgroundColor, // Set card background color
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundColor: AppColors.primaryColor, // Set CircleAvatar background color
              child: Icon(
                Icons.medical_services,
                color: Colors.white, // Set icon color
              ),
            ),
            const SizedBox(width: 16), // Space between the icon and text

            // Centered Text Column
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center, // Center the content vertically
                children: [
                  Text(
                    "Consult a Pharmacist",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: AppColors.textColor, // Set text color
                    ),
                  ),
                  const SizedBox(height: 4), // Add spacing between the texts
                  Text(
                    "Available 24/7 for your queries",
                    style: TextStyle(
                      color: AppColors.textColor.withOpacity(0.7), // Set text color with opacity
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
