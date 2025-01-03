import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trial/const/const_colo.dart';
import 'package:trial/const/const_img.dart';
import 'package:trial/screens/Home/Home_screen.dart';
import 'package:url_launcher/url_launcher.dart';

class JoinCampaignScreen extends StatelessWidget {
  const JoinCampaignScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isLandscape = MediaQuery.of(context).orientation == Orientation.landscape;

    return Scaffold(
      backgroundColor: homeBg,
      body: isLandscape
          ? Row(
              children: [
                // Image Section
                Flexible(
                  flex: 1,
                  child: Container(
                    height: double.infinity,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 10,
                          offset: const Offset(0, 5),
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                        bottomRight: Radius.circular(30),
                      ),
                      child: Stack(
                        children: [
                          Positioned.fill(
                            child: Image.asset(
                              logo, // Replace with your image path
                              fit: BoxFit.cover,
                            ),
                          ),
                          // Top Buttons (Back and Bookmark)
                          Positioned(
                            top: 16,
                            left: 16,
                            child: CircleAvatar(
                              backgroundColor: Colors.black.withOpacity(0.5),
                              child: IconButton(
                                icon: const Icon(Icons.arrow_back, color: Colors.white),
                                onPressed: () {
                                  Get.off(() => HomeScreen()); // Navigate back
                                },
                              ),
                            ),
                          ),
                          Positioned(
                            top: 16,
                            right: 16,
                            child: CircleAvatar(
                              backgroundColor: Colors.black.withOpacity(0.5),
                              child: IconButton(
                                icon: const Icon(Icons.bookmark_border, color: Colors.white),
                                onPressed: () {
                                  print('Bookmark clicked');
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                // Details Section
                Flexible(
                  flex: 2,
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.all(16.0),
                    child: DetailsSection(),
                  ),
                ),
              ],
            )
          : Column(
              children: [
                // Top Image Container
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    height: 240,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 10,
                          offset: const Offset(0, 5),
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Stack(
                        children: [
                          Positioned.fill(
                            child: Image.asset(
                              logo, // Replace with your image path
                              fit: BoxFit.cover,
                            ),
                          ),
                          // Top Buttons (Back and Bookmark)
                          Positioned(
                            top: 16,
                            left: 16,
                            child: CircleAvatar(
                              backgroundColor: Colors.black.withOpacity(0.5),
                              child: IconButton(
                                icon: const Icon(Icons.arrow_back, color: Colors.white),
                                onPressed: () {
                                  Get.off(() => HomeScreen()); // Navigate back
                                },
                              ),
                            ),
                          ),
                          Positioned(
                            top: 16,
                            right: 16,
                            child: CircleAvatar(
                              backgroundColor: Colors.black.withOpacity(0.5),
                              child: IconButton(
                                icon: const Icon(Icons.bookmark_border, color: Colors.white),
                                onPressed: () {
                                  print('Bookmark clicked');
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                // Details Section
                Expanded(
                  child: SingleChildScrollView(
                    child: DetailsSection(),
                  ),
                ),
                // Join Campaign Buttons
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      // Donor Button
                      ElevatedButton(
                        onPressed: () {
                          print("Joining Campaign as Donor...");
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: bgcolor, // Blue color for donor
                          minimumSize: const Size(double.infinity, 50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: const Text(
                          "Join the Campaign as Donor",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                      const SizedBox(height: 16),
                      // Volunteer Button
                      ElevatedButton(
                        onPressed: () {
                          print("Joining Campaign as Volunteer...");
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: bgcolor, // Orange color for volunteer
                          minimumSize: const Size(double.infinity, 50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: const Text(
                          "Join the Campaign as Volunteer",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
    );
  }
}

// Details Section extracted for reuse
class DetailsSection extends StatelessWidget {
  const DetailsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int currentVolunteers = 25;
    int totalVolunteersNeeded = 50;
    double progress = currentVolunteers / totalVolunteersNeeded;

    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            offset: Offset(0, -5),
          ),
        ],
      ),
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Location, Title, and Progress
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Community Composting",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "Volunteers: $currentVolunteers / $totalVolunteersNeeded",
                    style: TextStyle(fontSize: 14, color: Colors.grey[700]),
                  ),
                  const SizedBox(height: 8),
                  // Wrap LinearProgressIndicator in a SizedBox
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.7, // Adjust width as needed
                    child: LinearProgressIndicator(
                      value: progress,
                      backgroundColor: Colors.grey[300],
                      color: Colors.green,
                      minHeight: 8,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 16),
          // Description
          const Text(
            "Join our community composting initiative to help promote sustainability and reduce waste. You'll learn about composting techniques and contribute to the betterment of our environment and community garden.",
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey,
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}
