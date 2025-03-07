import 'package:flutter/material.dart';
import 'package:pharmacy_app/colors.dart'; // Assuming you have the colors defined in AppColors

class PrescriptionsPage extends StatelessWidget {
  const PrescriptionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Prescriptions",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: AppColors.textColor,
              ),
            ),
            SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: 5, // Example count of prescriptions
                itemBuilder: (context, index) {
                  return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    elevation: 3,
                    color: AppColors.backgroundColor,
                    child: ListTile(
                      contentPadding: EdgeInsets.all(12),
                      title: Text("Prescription #${index + 1}",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: AppColors.textColor,
                          )),
                      subtitle: Text("Status: Ready for Pickup",
                          style: TextStyle(
                            color: AppColors.textColor.withOpacity(0.7),
                          )),
                      trailing: Icon(Icons.arrow_forward),
                      onTap: () {
                       
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
