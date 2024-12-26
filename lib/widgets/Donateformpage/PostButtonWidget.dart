import 'package:flutter/material.dart';

Widget PostWidget() {
  return Container(
    padding: const EdgeInsets.only(left: 75.0, top: 5.0, right: 5.0, bottom: 5.0), // Add left padding to the container
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center, // Center the content vertically
      crossAxisAlignment: CrossAxisAlignment.center, // Center the button horizontally
      children: [
        // ElevatedButton centered both vertically and horizontally
        ElevatedButton(
          onPressed: () {
            // Define what happens when the button is pressed
            print("Donate button pressed!");
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xFF91AC8F), // Background color set to #91AC8F
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0), // Padding inside the button
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0), // Rounded corners for the button
            ),
          ),
          child: Text(
            "Donate!",
            style: TextStyle(
              color: Colors.white, // White text color
              fontSize: 16.0, // Font size for the text
              fontWeight: FontWeight.bold, // Bold text style
            ),
          ),
        ),
      ],
    ),
  );
}
