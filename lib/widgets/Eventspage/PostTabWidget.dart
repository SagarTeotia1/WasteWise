import 'package:flutter/material.dart';
import 'package:trial/widgets/Eventspage/postTabWidgets/PostTabEvents.dart';

class PostTab extends StatefulWidget {
  const PostTab({super.key});

  @override
  _PostTabState createState() => _PostTabState();
}

class _PostTabState extends State<PostTab> {
  @override
  Widget build(BuildContext context) {
    // Use a SingleChildScrollView to handle small screen sizes and prevent overflow
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.transparent,  // Make the container background transparent
          padding: const EdgeInsets.all(16),  // Add padding for content spacing
          child: Center(
            child: Column(
              children: [
                PostTabEventNearby(),
                SizedBox(height: 20),
                PostTabEventNearby(),
                SizedBox(height: 20),
                PostTabEventNearby(),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
      // Floating action button for the '+' icon
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your action here (e.g., navigate to a new page or show a dialog)
        },
        backgroundColor: Colors.white,  // Set the background color to white
        elevation: 4,  // Optional: Adds a slight shadow effect
        child: Icon(
          Icons.add,  // '+' icon
          size: 30,
          color: Color(0xFFB2C9AD),  // Set the icon color to #B2C9AD
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,  // Correct location
    );
  }
}
