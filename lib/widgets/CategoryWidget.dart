import 'package:flutter/material.dart';
import 'package:trial/const/const_fonts.dart';  // Assuming you are using a custom font

Widget Category() {
  return Padding(
    padding: const EdgeInsets.all(10), // Padding around the whole widget
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start, // Aligning text to the left
      children: [
        // Title Text (Categories)
        Text(
          "Categories",
          style: TextStyle(
            fontFamily: regularfont,  // Your custom font
            fontSize: 16,  // Text size
            fontWeight: FontWeight.bold,  // Optional: Make the text bold
          ),
        ),
        SizedBox(height: 10),  // Add some space between the title and the scrollable row

        // Scrollable Row of categories
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,  // Enables horizontal scrolling
          child: Row(
            children: [
              CategoryItem(icon: Icons.home, label: "Home"),
              CategoryItem(icon: Icons.business, label: "Business"),
              CategoryItem(icon: Icons.local_cafe, label: "Cafe"),
              CategoryItem(icon: Icons.sports, label: "Sports"),
              CategoryItem(icon: Icons.music_note, label: "Music"),
              CategoryItem(icon: Icons.fitness_center, label: "Fitness"),
              // Add more categories as needed
            ],
          ),
        ),
      ],
    ),
  );
}

// Widget for individual category item (Icon + Label)
Widget CategoryItem({required IconData icon, required String label}) {
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
          Container(
            padding: EdgeInsets.all(8),  // Padding inside the rectangle for icon
            decoration: BoxDecoration(
              color: Color(0xFF91AC8F),  // Another green shade background for the icon (91AC8F)
              borderRadius: BorderRadius.circular(10),  // Rounded corners for the icon container
            ),
            child: Icon(
              icon,
              size: 24,  // Icon size (smaller)
              color: Colors.white,  // Icon color (white for contrast)
            ),
          ),
          SizedBox(height: 5),  // Space between icon and label
          Text(
            label,
            style: TextStyle(
              fontFamily: regularfont,  // Custom font (if needed)
              fontSize: 10,  // Font size for category label (smaller)
              color: Colors.black,  // Text color
            ),
          ),
        ],
      ),
    ),
  );
}
