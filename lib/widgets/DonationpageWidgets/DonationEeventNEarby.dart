import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trial/const/const_fonts.dart';
import 'package:trial/const/const_img.dart';
import 'package:trial/screens/CatItemSilverScreen/Category_Item.dart';

Widget DonationeventNearby() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Text(
          "Donators Nearby",
          style: TextStyle(
            fontFamily: regularfont,
            fontSize: 16,
            color: Colors.black,
          ),
        ),
      ),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            buildDonationBox(
              image: donate1,
              title: "Fresh Sandwiches",
              quantity: "Quantity: 25 pre-packed sandwiches",
              profileImage: logo,
              donorName: "John Smith", // Alternating donor name
              rating: 4.5,
            ),
            buildDonationBox(
              image: donate2,
              title: "Vegetable Peelings and Stems",
              quantity: "10 kg Organic waste",
              profileImage: logo2,
              donorName: "Emily Brown", // Alternating donor name
              rating: 4.0,
            ),
            buildDonationBox(
              image: donate3,
              title: "Leftover Bread",
              quantity: "Quantity: 30 loaves of dry bread",
              profileImage: logo3,
              donorName: "Michael Johnson", // Alternating donor name
              rating: 4.0,
            ),
            buildDonationBox(
              image: donate4,
              title: "Laundry Water",
              quantity: "Quantity: 500 liters greywater",
              profileImage: logo4,
              donorName: "Sophia Davis", // Alternating donor name
              rating: 3.8,
            ),
            buildDonationBox(
              image: donate5,
              title: "Rainwater",
              quantity: "Quantity: 1,000 liters",
              profileImage: logo1,
              donorName: "David Martinez", // Alternating donor name
              rating: 4.7,
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
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    child: Container(
      width: 200,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.white, width: 6),
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
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 120,
                ),
              ),
              Positioned(
                top: 10,
                right: 10,
                child: Icon(
                  Icons.favorite_border,
                  color: Color(0xFF91AC8F),
                  size: 24,
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 4),
                Text(
                  quantity,
                  style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                ),
              ],
            ),
          ),
          SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 15,
                  backgroundImage: AssetImage(profileImage),
                ),
                SizedBox(width: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      donorName,
                      style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                    ),
                    SizedBox(height: 4),
                    Row(
                      children: List.generate(5, (index) {
                        return Icon(
                          index < rating
                              ? Icons.star
                              : index - rating < 0.5
                                  ? Icons.star_half
                                  : Icons.star_border,
                          color: Colors.yellow,
                          size: 16,
                        );
                      }),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Align(
              alignment: Alignment.center,
              child: TextButton(
                onPressed: () {
                  Get.to(() => const CategoryItem());
                  print("Contact button pressed!");
                },
                style: TextButton.styleFrom(
                  backgroundColor: Color(0xFF91AC8F),
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  "Contact",
                  style: TextStyle(
                    color: Colors.white,
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
