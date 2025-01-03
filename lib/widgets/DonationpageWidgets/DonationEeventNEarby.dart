import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trial/const/const_img.dart';
import 'package:trial/screens/CatItemSilverScreen/Category_Item.dart';
import 'package:trial/screens/Compaign/JoinaCompaign.dart';
import 'package:trial/screens/donation/donation_Details.dart';

Widget DonationeventNearby() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Text(
          "Donators Nearby",
          style: TextStyle(
            fontFamily: 'Roboto',
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Colors.black,
          ),
        ),
      ),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            buildDonationBox(
              image: 'assets/images/donate1.png',
              title: "Fresh Sandwiches",
              quantity: "25 pre-packed sandwiches",
              profileImage: logo,
              donorName: "John Smith",
              rating: 4.8,
              category: "Food",
              distance: "1.2 km",
              urgency: "High",
            ),
            buildDonationBox(
              image: 'assets/images/donate2.png',
              title: "Vegetable Peelings",
              quantity: "10 kg organic waste",
              profileImage: logo,
              donorName: "Emily Brown",
              rating: 4.6,
              category: "Compostable",
              distance: "3.5 km",
              urgency: "Medium",
            ),
            buildDonationBox(
              image: 'assets/images/donate3.png',
              title: "Leftover Bread",
              quantity: "30 loaves of dry bread",
              profileImage: 'assets/images/logo3.png',
              donorName: "Michael Johnson",
              rating: 4.7,
              category: "Food",
              distance: "2.8 km",
              urgency: "Low",
            ),
            buildDonationBox(
              image: 'assets/images/donate4.png',
              title: "Laundry Water",
              quantity: "500 liters of greywater",
              profileImage: 'assets/images/logo4.png',
              donorName: "Sophia Davis",
              rating: 4.3,
              category: "Water",
              distance: "5.0 km",
              urgency: "Medium",
            ),
            buildDonationBox(
              image: 'assets/images/donate5.png',
              title: "Rainwater",
              quantity: "1,000 liters",
              profileImage: logo,
              donorName: "David Martinez",
              rating: 4.9,
              category: "Water",
              distance: "0.8 km",
              urgency: "High",
            ),
          ],
        ),
      ),
    ],
  );
}

Widget buildDonationBox({
  required String image,
  required String title,
  required String quantity,
  required String profileImage,
  required String donorName,
  required double rating,
  required String category,
  required String distance,
  required String urgency,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    child: Container(
      width: 220,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            blurRadius: 10,
            spreadRadius: 5,
            offset: Offset(3, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                  height: 140,
                  width: double.infinity,
                ),
              ),
              Positioned(
                top: 10,
                right: 10,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: urgency == "High" ? Colors.redAccent : Colors.orangeAccent,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    urgency,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  quantity,
                  style: TextStyle(fontSize: 14, color: Colors.grey[700]),
                ),
                SizedBox(height: 6),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: Colors.lightBlueAccent,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        category,
                        style: TextStyle(fontSize: 12, color: Colors.white),
                      ),
                    ),
                    Spacer(),
                    Text(
                      distance,
                      style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                TextButton(
                  onPressed: () {
                    Get.off(()=>DonationDetails());
                    print("View Details clicked for $title");
                  },
                  child: Text(
                    "View Details",
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ],
            ),
          ),
          Divider(thickness: 1, color: Colors.grey[300]),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 16,
                  backgroundImage: AssetImage(profileImage),
                ),
                SizedBox(width: 8),
                Expanded(
                  child: Text(
                    donorName,
                    style: TextStyle(fontSize: 14, color: Colors.grey[600]),
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
