import 'package:flutter/material.dart';
import 'package:trial/const/const_img.dart'; // Assuming logo is imported here

Widget CatEventsList() {
  return Container(
    color: Color(0xFFB2C9AD), // Set the background color of the entire Column
    child: Column(
      children: [
        SizedBox(height: 20),
        CatEventsCard(),
        SizedBox(height: 10),
        CatEventsCard(),
        SizedBox(height: 10),
        CatEventsCard(),
        SizedBox(height: 10),
      ],
    ),
  );
}

Widget CatEventsCard() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10), // Space between boxes
    child: Container(
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
                  logo, // Replace with your image path
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 120, // Height of the image
                ),
              ),
              // Like Icon at the top-right corner with color updated to 91AC8F
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Event Title
                Text(
                  "Donation Event Title", // Replace with your event title
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  overflow: TextOverflow.ellipsis, // Ensures the text doesn't overflow
                ),
                SizedBox(height: 4), // Space between event title and quantity
                // Donation Quantity
                Text(
                  "Quantity: 10 items", // Replace with your actual quantity
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey[600],
                  ),
                ),
              ],
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
                  backgroundImage: AssetImage(logo), // Dummy profile picture (replace with real path)
                ),
                SizedBox(width: 8), // Space between profile icon and name
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "John Doe", // Dummy name (replace with the actual name of the donor)
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey[600],
                      ),
                    ),
                    SizedBox(height: 4), // Space between name and rating
                    // Donor rating (using stars as an example)
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 16,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 16,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 16,
                        ),
                        Icon(
                          Icons.star_half,
                          color: Colors.yellow,
                          size: 16,
                        ),
                        Icon(
                          Icons.star_border,
                          color: Colors.yellow,
                          size: 16,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 8), // Space between profile section and the button
          Padding(
            padding: const EdgeInsets.all(10), // Padding for the button section
            child: Align(
              alignment: Alignment.center, // Center the button
              child: TextButton(
                onPressed: () {
                  // Handle the contact action, such as showing a dialog or navigating to another screen
                  print("Contact button pressed!");
                },
                style: TextButton.styleFrom(
                  backgroundColor: Color(0xFF91AC8F), // Button background color
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10), // Rounded corners for the button
                  ),
                ),
                child: Text(
                  "Contact", // Button text
                  style: TextStyle(
                    color: Colors.white, // Text color of the button
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
