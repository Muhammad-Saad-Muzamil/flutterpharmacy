import 'package:flutter/material.dart';
import 'package:pharmacy_app/colors.dart';

class CartPageDialog extends StatelessWidget {
  const CartPageDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      elevation: 4,
      backgroundColor: AppColors.backgroundColor,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Your Cart",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: AppColors.textColor,
              ),
            ),
            const SizedBox(height: 16),
            // Cart items (dummy data)
            ListView.builder(
              shrinkWrap: true,
              itemCount: 5, // Example count of items in cart
              itemBuilder: (context, index) {
                return Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  elevation: 3,
                  color: AppColors.backgroundColor,
                  child: ListTile(
                    contentPadding: EdgeInsets.all(12),
                    title: Text(
                      "Item #${index + 1}",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: AppColors.textColor,
                      ),
                    ),
                    subtitle: Text(
                      "Price: \$10.00", // Replace with dynamic price
                      style: TextStyle(
                        color: AppColors.textColor.withOpacity(0.7),
                      ),
                    ),
                    trailing: IconButton(
                      icon: Icon(Icons.remove_circle, color: Colors.red),
                      onPressed: () {
                        // Handle removing item from cart (logic to be added)
                      },
                    ),
                  ),
                );
              },
            ),
            const SizedBox(height: 16),
            // Total and Checkout Button
            Text(
              "Total: \$50.00", // Replace with dynamic total
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: AppColors.primaryColor,
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Handle checkout logic here
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primaryColor,
                foregroundColor: Colors.white,
              ),
              child: Text("Proceed to Checkout"),
            ),
          ],
        ),
      ),
    );
  }
}
