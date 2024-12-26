import 'package:flutter/material.dart';
import 'package:trial/const/const_fonts.dart';
import 'package:trial/widgets/CategoryWidget.dart';
import 'package:trial/widgets/homepage%20widgets/ComapingWidget.dart';
import 'package:trial/widgets/homepage%20widgets/EventsNearbyWidget.dart';
import 'package:trial/widgets/homepage%20widgets/Greeting_widget.dart';
import 'package:trial/widgets/searchfieldWidget.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "WasteWise",
          style: TextStyle(color: Color(0xFF66785F),
          fontFamily: regularfont
          ,fontSize: 18), // Corrected color syntax
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications, color: Colors.black),
            tooltip: "Notifications", // Added tooltip
            onPressed: () {},
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Text("Drawer Header"),
              decoration: BoxDecoration(
                color: Colors.grey[300], // Replace with 'homeBg' or another valid color
              ),
            ),
            ListTile(
              title: Text("Item 1"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("Item 2"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              SizedBox(height: 10),
              Greeting(), // Ensure Greeting is defined
              SizedBox(height: 10),
              SearchField(), // Ensure SearchField is defined
              SizedBox(height: 10),
              Campaign(), // Ensure Campaign is defined
              SizedBox(height: 10),
              Category(), // Ensure Category is defined
              SizedBox(height: 10),
              eventNearby(), // Renamed for convention
            ],
          ),
        ),
      ),
    );
  }
}
