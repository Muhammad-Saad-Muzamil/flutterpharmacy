import 'package:flutter/material.dart';
import 'package:pharmacy_app/screens/homepage.dart';
import 'colors.dart'; 

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // Using the primaryColor from AppColors
        primaryColor: AppColors.primaryColor,  
        
        // Updated for secondary color (accent color replacement)
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.orange,
        ).copyWith(
          secondary: AppColors.secondaryColor, // Accent color replacement
          background: AppColors.backgroundColor, // Background color
        ),
        
        // Text styling
        textTheme: TextTheme(
          bodyLarge: TextStyle(color: AppColors.textColor), // Regular text color
          bodyMedium: TextStyle(color: AppColors.textColor),
          titleLarge: TextStyle(color: AppColors.primaryColor),  // Header color
        ),

        // Button theme
        buttonTheme: ButtonThemeData(
          buttonColor: AppColors.primaryColor,  // Button color
          textTheme: ButtonTextTheme.primary, // Button text color
        ),
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
