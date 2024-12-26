import 'package:flutter/material.dart';
import 'package:trial/widgets/DonationpageWidgets/DonateditemCategory.dart';
import 'package:trial/widgets/DonationpageWidgets/DonationEeventNEarby.dart';
import 'package:trial/widgets/DonationpageWidgets/DonationTitleWidget.dart';
import 'package:trial/widgets/searchfieldWidget.dart';

class DonationPage extends StatefulWidget {
  const DonationPage({super.key});

  @override
  State<DonationPage> createState() => _DonationPageState();
}

class _DonationPageState extends State<DonationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(  // Wrap the Column inside a SingleChildScrollView
        child: Padding(
          padding: const EdgeInsets.all(10.0),  // Optional padding around the content
          child: Column(
            children: [
              SizedBox(height: 20),
              DonationTitle(),
              SizedBox(height: 10),
              SearchField(),
              SizedBox(height: 20),
              DonateditemCategory(),
              SizedBox(height: 20),
              DonationeventNearby(),
              SizedBox(height: 20),
              DonationeventNearby(),
              SizedBox(height: 20),
              DonationeventNearby(),
              SizedBox(height: 20),
              DonationeventNearby(),
            ],
          ),
        ),
      ),
    );
  }
}