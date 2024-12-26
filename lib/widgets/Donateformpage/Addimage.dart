import 'package:flutter/material.dart';

Widget addWidget() {
  return Container(
    padding: const EdgeInsets.all(5.0), // Add padding around the container
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start, // Align text to the left
      children: [
        // Text "Add Images and Videos" aligned to the left
        Text(
          "Add Images and Videos",
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.left, // Align text to the left
        ),
        SizedBox(height: 16), // Space between text and row

        // Row for displaying the images/videos and the + icon
        Row(
          mainAxisAlignment: MainAxisAlignment.start, // Align to the start of the row
          children: [
            // Container for image (just an example placeholder)
            Container(
              width: 80, // Width of the container
              height: 80, // Height of the container
              decoration: BoxDecoration(
                color: Colors.grey[300], // Light grey background
                borderRadius: BorderRadius.circular(8), // Rounded corners
              ),
              child: Icon(
                Icons.image, // Image icon placeholder
                color: Colors.grey[700], // Darker grey for the icon
                size: 40, // Icon size
              ),
            ),
            SizedBox(width: 16), // Space between the image and the + icon

            // Add Image/Video + icon with background color set to #91AC8F
            GestureDetector(
              onTap: () {
                // Action when the icon is tapped (e.g., open gallery or camera)
                print("Add image/video tapped!");
              },
              child: Container(
                width: 80, // Width of the + icon container
                height: 80, // Height of the + icon container
                decoration: BoxDecoration(
                  color: Color(0xFF91AC8F), // Background color set to #91AC8F
                  borderRadius: BorderRadius.circular(8), // Rounded corners
                ),
                child: Icon(
                  Icons.add, // + icon
                  color: Colors.white, // White icon color
                  size: 40, // Icon size
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
