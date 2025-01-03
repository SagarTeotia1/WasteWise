import 'package:flutter/material.dart';
import 'package:get/get.dart'; // GetX package for navigation
import 'package:trial/const/const_colo.dart';
import 'package:trial/const/const_fonts.dart';
import 'package:trial/screens/CatItemSilverScreen/Category_Item.dart'; // Assuming you are using a custom font

// Main widget for donated item categories
Widget DonatedItemCategory() {
  return Padding(
    padding: const EdgeInsets.all(10), // Padding around the whole widget
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start, // Aligning text to the left
      children: [
        const SizedBox(height: 10), // Space below the title
        SingleChildScrollView(
          scrollDirection: Axis.horizontal, // Enables horizontal scrolling
          child: Row(
            children: [
              CategoryItem(icon: Icons.food_bank, label: "Food"),
              CategoryItem(icon: Icons.water_drop, label: "Water"),
              CategoryItem(icon: Icons.recycling, label: "Recycle"),
              CategoryItem(icon: Icons.cleaning_services, label: "Sanitation"),
              CategoryItem(icon: Icons.eco, label: "Compost"),
              CategoryItem(icon: Icons.volunteer_activism, label: "Donation"),
            ],
          ),
        ),
      ],
    ),
  );
}

// Widget for individual category item
Widget CategoryItem({required IconData icon, required String label}) {
  return GestureDetector(
    onTap: () {
      Get.off(() => CategoryItemsScreen()); // Navigate to new screen
    },
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8), // Space between items
      child: Container(
        width: 100, // Fixed width for consistent sizing
        height: 120, // Fixed height for consistent sizing
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 230, 237, 231), // Background color
          borderRadius: BorderRadius.circular(15), // Rounded corners
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1), // Shadow color
              blurRadius: 5, // Blur effect
              offset: const Offset(2, 2), // Shadow position
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Center content vertically
          children: [
            Icon(
              icon,
              size: 30,
              color: bgcolor, // Icon color to match sustainability theme
            ),
            const SizedBox(height: 8), // Space between icon and label
            Text(
              label,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: regularfont, // Custom font
                fontSize: 14, // Font size
                color: Colors.black, // Text color
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

// Screen to display items in the selected category
