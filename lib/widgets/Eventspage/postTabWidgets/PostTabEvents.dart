import 'package:flutter/material.dart';
import 'package:trial/const/const_img.dart'; // Assuming you have the const_img.dart with logo constants.

class PostTabEventNearby extends StatelessWidget {
  const PostTabEventNearby({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView( // Makes the entire content scrollable
      child: Column(
        children: [
          buildPostTabEventNearby(),
          SizedBox(height: 20),
          buildPostTabEventNearby(),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}

// Build the Event Post with dummy data
Widget buildPostTabEventNearby() {
  return Container(
    margin: EdgeInsets.all(2), // Optional: Adjusts the margin for each event card
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
      border: Border.all(color: Colors.white, width: 2), // White border with width of 2
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.1),
          blurRadius: 10,
          offset: Offset(4, 4),
        ),
      ],
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Event Image with Stack for Like Button
        Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              child: Image.asset(
                logo, // Logo from constants file or path
                fit: BoxFit.cover,
                width: double.infinity,
                height: 180, // Fixed height for image
              ),
            ),
            Positioned(
              top: 10,
              right: 10,
              child: IconButton(
                icon: Icon(Icons.favorite_border),
                color: Colors.white,
                onPressed: () {
                  // Add the like functionality here
                },
              ),
            ),
          ],
        ),
        
        // Event Title Text
        Padding(
          padding: const EdgeInsets.all(5), // Decreased padding to 5
          child: Text(
            "Event Title",  // Placeholder for event title
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        
        // Event Description Text (dummy)
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5), // Decreased padding to 5
          child: Text(
            "This is a description of the event. You can add details about the event here.",
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[600],
            ),
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
        ),
        
        // Profile and Username Row with a Text Button
        Padding(
          padding: const EdgeInsets.all(5), // Decreased padding to 5
          child: Row(
            children: [
              // Profile Image
              CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage(logo), // Replace with actual image path or use a default icon
              ),
              SizedBox(width: 8),
              
              // Username Text
              Text(
                "John Doe",  // Placeholder for username
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              
              // Text Button to the right of the username
              Spacer(),
              TextButton(
                onPressed: () {
                  // Add action for the button (e.g., navigate to profile)
                },
                child: Text(
                  "Follow", // Text for the button
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
