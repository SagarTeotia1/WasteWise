import 'package:flutter/material.dart';
import 'package:get/get.dart'; // Import the Get package
import 'package:trial/const/const_fonts.dart'; // Assuming boldfont is defined here
import 'package:trial/const/const_img.dart'; // Assuming surplus image path is defined here
import 'package:trial/screens/Home/Home_screen.dart';
import 'package:trial/widgets/CatlistWidgets/cateventsWidget.dart'; // Assuming CatEventsList is a custom widget
 // Assuming HomeScreen is located here

class CategoryItemsScreen extends StatefulWidget {
  const CategoryItemsScreen({Key? key}) : super(key: key);

  @override
  State<CategoryItemsScreen> createState() => _CategoryItemsScreenState();
}

class _CategoryItemsScreenState extends State<CategoryItemsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // Transparent SliverAppBar with background color and back arrow
          SliverAppBar(
            floating: true,
            expandedHeight: 200,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.black), // Back arrow icon
              onPressed: () {
                Get.off(() => const HomeScreen()); // Navigate to HomeScreen using Get.off
              },
            ),
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                surplus, // Image asset path from const_img.dart
                fit: BoxFit.cover,
              ),
              title: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                color: Colors.white.withOpacity(0.7), // Semi-transparent background for better text visibility
                child: Text(
                  'SURPLUS FOOD',
                  style: TextStyle(
                    fontFamily: boldfont,
                    fontSize: 16,
                    color: const Color.fromARGB(255, 13, 72, 0), // Green color
                  ),
                ),
              ),
            ),
            backgroundColor: const Color.fromARGB(255, 178, 201, 173), // Light greenish background
            elevation: 0, // Remove shadow effect
          ),
          // SliverList with custom widget (CatEventsList)
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  color: const Color(0xFFB2C9AD), // Set background color for the list items
                  padding: const EdgeInsets.all(16.0), // Add padding for better spacing
                  child: CatEventsList(), // Your custom widget
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
