import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trial/const/const_colo.dart';
import 'package:trial/const/const_img.dart';
import 'package:trial/screens/Home/Home_screen.dart';

class DonationDetails extends StatelessWidget {
  const DonationDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;

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
                              'assets/images/donate4.png', // Replace with your image path
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
                                icon: const Icon(Icons.arrow_back,
                                    color: Colors.white),
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
                                icon: const Icon(Icons.priority_high,
                                    color: Colors.white),
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
                    child: DonationDescriptionSection(),
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
                             'assets/images/donate4.png', // Replace with your image path
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
                                icon: const Icon(Icons.arrow_back,
                                    color: Colors.white),
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
                                icon: const Icon(Icons.bookmark_border,
                                    color: Colors.white),
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
                    child: DonationDescriptionSection(),
                  ),
                ),
                // Buttons Row
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          print("NGO Selected");
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: bgcolor,
                          minimumSize: const Size(double.infinity,
                              50), // Makes the button fill available width
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: const Text(
                          "NGO",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                      const SizedBox(
                          height: 16), // Adds spacing between the buttons
                      ElevatedButton(
                        onPressed: () {
                          print("Simple User Selected");
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: bgcolor,
                          minimumSize: const Size(double.infinity,
                              50), // Makes the button fill available width
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: const Text(
                          "Individual",
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

// Details Section for Donation Description
class DonationDescriptionSection extends StatelessWidget {
  const DonationDescriptionSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          const Text(
            "Item Details",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            "Donation Item: Laundry Water",
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            "Quantity: 500 Liters of Grey Water",
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            "Description",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            "We are collecting 500 liters of grey water for sustainable reuse in community gardening and cleaning purposes. This initiative aims to promote water conservation and support eco-friendly practices.",
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
