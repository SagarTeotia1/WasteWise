import 'package:flutter/material.dart';
import 'package:trial/const/const_fonts.dart';
import 'package:trial/const/const_img.dart'; // Assuming this file has your image path

Widget eventNearby() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start, // Aligns text to the start (left)
    children: [
      // Heading above the row of event boxes
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10), // Padding around the text
        child: Text(
          "Events Nearby", // Text heading
          style: TextStyle(
            fontFamily: regularfont,
            fontSize: 16, // Font size of the heading
            color: Colors.black, // Text color
          ),
        ),
      ),
      // Row of event boxes
      SingleChildScrollView(
        scrollDirection: Axis.horizontal, // Makes the row scrollable horizontally
        child: Row(
          children: [
            eventBox1(),
            eventBox2(),
            eventBox3(),
          ],
        ),
      ),
    ],
  );
}

// Event Box 1
Widget eventBox1() {
  return eventBox(
    title: "Community Composting",
    image: compost,
    profileImage: logo,
    profileName: "John Doe",
  );
}

// Event Box 2
Widget eventBox2() {
  return eventBox(
    title: "Zero-Waste Cooking ",
    image: zero, // Replace with your image path
    profileImage: logo1, // Replace with another profile image path
    profileName: "Jane Smith",
  );
}

// Event Box 3
Widget eventBox3() {
  return eventBox(
    title: "Water Recycling Drive",
    image: water, // Replace with your image path
    profileImage: logo2, // Replace with another profile image path
    profileName: "Alice Green",
  );
}

// Reusable Event Box Widget
Widget eventBox({
  required String title,
  required String image,
  required String profileImage,
  required String profileName,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10), // Space between boxes
    child: Container(
      width: 200, // Width of each box
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20), // Rounded corners
        border: Border.all(
          color: Colors.white, // Set border color to white
          width: 6, // Increased border width to 6
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 8,
            offset: Offset(4, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              // Image in the box
              ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20), topRight: Radius.circular(20)),
                child: Image.asset(
                  image, // Replace with your image path
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 120, // Height of the image
                ),
              ),
              // Like Icon at the top-right corner
              Positioned(
                top: 10,
                right: 10,
                child: Icon(
                  Icons.favorite_border,
                  color: Color(0xFF91AC8F), // Updated color of the like icon
                  size: 24,
                ),
              ),
            ],
          ),
          SizedBox(height: 8), // Space between image and text
          Padding(
            padding: const EdgeInsets.all(10), // Padding for the text (10 from all sides)
            child: Text(
              title, // Event title
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              overflow: TextOverflow.ellipsis, // Ensures the text doesn't overflow
            ),
          ),
          SizedBox(height: 8), // Space between text and profile section
          Padding(
            padding: const EdgeInsets.all(10), // Padding for the profile section (10 from all sides)
            child: Row(
              children: [
                // Profile Icon
                CircleAvatar(
                  radius: 15,
                  backgroundImage: AssetImage(profileImage), // Profile picture
                ),
                SizedBox(width: 8), // Space between profile icon and name
                Text(
                  profileName, // Profile name
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
