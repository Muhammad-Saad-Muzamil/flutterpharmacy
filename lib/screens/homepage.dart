import 'package:flutter/material.dart';
import 'package:pharmacy_app/screens/orderpage.dart';
import 'package:pharmacy_app/screens/prescriptionpage.dart';
import 'package:pharmacy_app/widgets/bottomNavBar.dart';
import 'package:pharmacy_app/widgets/categoryCard.dart';
import 'package:pharmacy_app/widgets/conusltationCard.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    OrdersPage(),
    PrescriptionsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar or the header of the app
      appBar: AppBar(
        title: Row(
          children: [
            Icon(Icons.notifications),
            Spacer(),
            Text(
              "Alpha",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
            ),
            Spacer(),
            Icon(Icons.shopping_cart),
          ],
        ),
      ),

      // Body of the app
      body: _widgetOptions[_selectedIndex],
      bottomNavigationBar: BottomNavBar(
        selectedIndex: _selectedIndex,
        onTabChange: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Top: Banner
              Container(
                width: double.infinity,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage("assets/images/banner.png"), // Replace with your banner image
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 16), // Add spacing between sections

              // Middle: Categories Title
              Text(
                "Categories",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),

              CategoryCard(
                categories: ['Pharmacy', 'Health', 'Hospitals', 'Consultation'],
              ),

              SizedBox(height: 16),
              Text(
                "Pharmacist Consultation",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              ConsultationCard(),

              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Current Orders",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text("See all"),
                ],
              ),
              Center(
                child: Text(
                  "No current orders",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
                ),
              ),

              // Additional UI components like rows or lists can go here
            ],
          ),
        ),
      ),
    );
  }
}
