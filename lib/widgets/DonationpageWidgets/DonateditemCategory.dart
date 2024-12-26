import 'package:flutter/material.dart';
import 'package:trial/const/const_fonts.dart';  // Assuming you are using a custom font

Widget DonateditemCategory() {
  return Padding(
    padding: const EdgeInsets.all(10), // Padding around the whole widget
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start, // Aligning text to the left
      children: [
          SingleChildScrollView(
          scrollDirection: Axis.horizontal,  // Enables horizontal scrolling
          child: Row(
            children: [
              CategoryItem(label: "Home"),
              CategoryItem(label: "Business"),
              CategoryItem(label: "Cafe"),
              CategoryItem(label: "Sports"),
              CategoryItem(label: "Music"),
              CategoryItem(label: "Fitness"),
              // Add more categories as needed
            ],
          ),
        ),
      ],
    ),
  );
}

// Widget for individual category item (Only Label, without Icon)
Widget CategoryItem({required String label}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8),  // Space between category items
    child: Container(
      width: 90,  // Set width of the category item to make it fit 4 items on screen
      padding: EdgeInsets.all(12),  // Padding inside the rectangle
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 230, 237, 231),  // Green shade background color (B2C9AD)
        borderRadius: BorderRadius.circular(15),  // Rounded corners
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),  // Shadow color
            blurRadius: 5,  // Blur effect of shadow
            offset: Offset(2, 2),  // Shadow position
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,  // Avoids taking more space than needed
        children: [
          // Icon has been removed, now only showing label
          Text(
            label,
            style: TextStyle(
              fontFamily: regularfont,  // Custom font (if needed)
              fontSize: 14,  // Font size for category label (slightly larger than before)
              color: Colors.black,  // Text color
            ),
          ),
        ],
      ),
    ),
  );
}
