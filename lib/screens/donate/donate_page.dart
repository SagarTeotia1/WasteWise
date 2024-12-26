import 'package:flutter/material.dart';
import 'package:trial/widgets/Donateformpage/Addimage.dart';
import 'package:trial/widgets/Donateformpage/DetailsWidget.dart';
import 'package:trial/widgets/Donateformpage/RadioListWidget.dart';
import 'package:trial/widgets/Donateformpage/PostButtonWidget.dart';
import 'package:trial/widgets/Donateformpage/sliderWidget.dart';
import 'package:trial/widgets/Donateformpage/togglewiddget.dart';

class DonatePage extends StatefulWidget {
  const DonatePage({super.key});

  @override
  State<DonatePage> createState() => _DonatePageState();
}

class _DonatePageState extends State<DonatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent, // Set app bar to transparent
        leading: Icon(Icons.arrow_back, color: Colors.black), // Make the back icon visible with black color
        title: const Text(
          "Donation",
          style: TextStyle(color: Colors.black), // Set the title text color to black for visibility
        ),
        elevation: 0, // Set elevation to 0 to remove shadow
      ),
      body: SingleChildScrollView( // Wrap the body with SingleChildScrollView to make it scrollable
        padding: const EdgeInsets.all(10.0), // Padding around the container
        child: Container(
          width: double.infinity, // Container takes full width
          decoration: BoxDecoration(
            color: Colors.white, // White background color
            borderRadius: BorderRadius.circular(20), // Rounded corners
          ),
          child: Padding(
            padding: const EdgeInsets.all(20), // Internal padding to give space inside the container
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start, // Align children to the start
              children: [
                ToggleWidget(),
                SizedBox(height: 20),
                RadioList(),
                SizedBox(height: 20), // Add a space between the toggle and the text
                detailsWidget(),
                SizedBox(height: 20),
                Sliderwidget(),
                addWidget(),
                SizedBox(height: 20),
                PostWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
