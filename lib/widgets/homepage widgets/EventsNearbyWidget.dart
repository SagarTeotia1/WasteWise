import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:trial/const/const_fonts.dart';
import 'package:trial/const/const_img.dart';
import 'package:trial/screens/Compaign/JoinaCompaign.dart'; // Assuming this file has your image path

Widget eventNearby() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start, // Aligns text to the start (left)
    children: [
      // Heading above the row of event boxes
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10), // Padding around the text
        child: Text(
          "Campaigns and Events Nearby", // Updated heading
          style: TextStyle(
            fontFamily: regularfont,
            fontSize: 18, // Font size of the heading
            fontWeight: FontWeight.bold, // Bold for emphasis
            color: Colors.black, // Eco-friendly green color
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
    description: "Join us to learn about composting and contribute to our community garden.",
    dateTime: "March 5, 2025 | 10:00 AM - 1:00 PM",
    location: "Green Park, City Center",
    volunteersNeeded: 50,
    currentVolunteers: 20,
  );
}

// Event Box 2
Widget eventBox2() {
  return eventBox(
    title: "Zero-Waste Cooking",
    image: zero,
    profileImage: logo1,
    profileName: "Jane Smith",
    description: "Learn to prepare delicious meals with zero waste! Let's cook sustainably.",
    dateTime: "March 6, 2025 | 2:00 PM - 4:00 PM",
    location: "Eco Kitchen, Downtown",
    volunteersNeeded: 30,
    currentVolunteers: 15,
  );
}

// Event Box 3
Widget eventBox3() {
  return eventBox(
    title: "Water Recycling Drive",
    image: water,
    profileImage: logo2,
    profileName: "Alice Green",
    description: "Help us recycle water and save resources! Join our drive to make a difference.",
    dateTime: "March 7, 2025 | 9:00 AM - 12:00 PM",
    location: "Water Station, River Road",
    volunteersNeeded: 40,
    currentVolunteers: 30,
  );
}

// Reusable Event Box Widget
Widget eventBox({
  required String title,
  required String image,
  required String profileImage,
  required String profileName,
  required String description,
  required String dateTime,
  required String location,
  required int volunteersNeeded,
  required int currentVolunteers,
}) {
  double progress = currentVolunteers / volunteersNeeded;

  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10), // Space between boxes
    child: Container(
      width: 220, // Width of each box (adjusted slightly for better fit)
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20), // Rounded corners
        border: Border.all(
          color: Colors.white, // Set border color to white
          width: 6, // Increased border width to 6
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
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
          SizedBox(height: 8), // Space between title and description
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10), // Padding for description
            child: Text(
              description, // Event description
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey[700],
                height: 1.5, // Line height for better readability
              ),
              maxLines: 2, // Limit description to 2 lines
              overflow: TextOverflow.ellipsis, // Avoid overflow
            ),
          ),
          SizedBox(height: 8), // Space between description and profile section
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
          SizedBox(height: 8), // Space before the volunteer info
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Number of Volunteers Needed
                Text(
                  "Volunteers Needed: $volunteersNeeded",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.green[800],
                  ),
                ),
                SizedBox(height: 4), // Small gap
                // Current Volunteers
                Text(
                  "Current Volunteers: $currentVolunteers",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey[600],
                  ),
                ),
                SizedBox(height: 8), // Small gap between volunteer count and progress bar
                // Progress Bar
                LinearProgressIndicator(
                  value: progress, // Progress based on the number of volunteers signed up
                  backgroundColor: Colors.grey[300],
                  color: Color(0xFF91AC8F), // Green progress bar color
                  minHeight: 6,
                ),
              ],
            ),
          ),
          SizedBox(height: 8), // Space before the button
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: ElevatedButton(
              onPressed: () {
                Get.off(()=>JoinCampaignScreen());
                print("Join Event: $title");
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF91AC8F), // Green button color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15), // Rounded corners for button
                ),
              ),
              child: Text(
                "Join Event",
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
