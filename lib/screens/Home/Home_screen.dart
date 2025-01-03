import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:trial/const/const_colo.dart'; 
import 'package:trial/screens/Guide/GuideScreen.dart';
import 'package:trial/screens/donate/donate_page.dart';
import 'package:trial/screens/donation/donation_page.dart';
import 'package:trial/screens/profile/profile_page.dart';
import 'homepage.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Define a list of widgets (pages) to show based on the index
  final List<Widget> _pages = [
    Homepage(),
    DonationPage(),
    DonatePage(),
    GuideScreen(),
    ProfilePage(),
  ];

  // Initially set to 0, meaning the first page will be shown
  int _currentIndex = 0;

  final List<Map<String, dynamic>> _navigationItems = [
    {'icon': Icons.home, 'label': 'Home'},
    {'icon': Icons.food_bank, 'label': 'Donations'},
    {'icon': Icons.add, 'label': 'Donate'},
    {'icon': Icons.accessibility, 'label': 'Guide'},
    {'icon': Icons.person, 'label': 'You'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: homeBg, // Use your color constant for the background
      body: _pages[_currentIndex], // Display the current page based on the selected index
      bottomNavigationBar: CurvedNavigationBar(
        items: _navigationItems
            .map(
              (item) => Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(item['icon'], color: Colors.black),
                  const SizedBox(height: 4), // Spacing between icon and label
                  Text(
                    item['label'],
                    style: TextStyle(
                      fontSize: item['label'] == 'Donations' ? 9 : 10, // Adjusted font size
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            )
            .toList(),
        backgroundColor: Colors.transparent, // Make the background transparent
        color: Colors.white, // Color of the navigation bar
        buttonBackgroundColor:
            const Color.fromARGB(255, 247, 247, 247), // Central icon button background
        animationDuration: const Duration(milliseconds: 300),
        height: 70, // Adjusted height to accommodate labels
        index: _currentIndex, // This ensures the correct icon is highlighted
        onTap: (index) {
          setState(() {
            // Update the current index and display the corresponding page
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
