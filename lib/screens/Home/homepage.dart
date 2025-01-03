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
          "WiseWaste",
          style: TextStyle(
            color: Color(0xFF66785F),
            fontFamily: regularfont,
            fontSize: 18,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications, color: Colors.black),
            tooltip: "Notifications",
            onPressed: () {
              // Handle notifications
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text("Sagar"),
                accountEmail: Text("Ex@WiseWaste.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/Sagar.jpg"),
                  onBackgroundImageError: (_, __) {
                    // Fallback image or text
                    debugPrint("Profile image not found.");
                  },
                  child: Icon(Icons.person), // Fallback icon
                ),
                decoration: BoxDecoration(
                  color: Color(0xFF66785F),
                ),
              ),
              ListTile(
                leading: Icon(Icons.dashboard),
                title: Text("Dashboard"),
                onTap: () {
                  Navigator.pop(context);
                  // Navigate to Dashboard
                },
              ),
              ListTile(
                leading: Icon(Icons.category),
                title: Text("Categories"),
                onTap: () {
                  Navigator.pop(context);
                  // Navigate to Categories
                },
              ),
              ListTile(
                leading: Icon(Icons.group),
                title: Text("Community"),
                onTap: () {
                  Navigator.pop(context);
                  // Navigate to Community
                },
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.notifications),
                title: Text("Notifications"),
                onTap: () {
                  Navigator.pop(context);
                  // Navigate to Notifications Settings
                },
              ),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text("Account"),
                onTap: () {
                  Navigator.pop(context);
                  // Navigate to Account Settings
                },
              ),
              ListTile(
                leading: Icon(Icons.privacy_tip),
                title: Text("Privacy Policy"),
                onTap: () {
                  Navigator.pop(context);
                  // Navigate to Privacy Policy
                },
              ),
              ListTile(
                leading: Icon(Icons.help),
                title: Text("Help & Support"),
                onTap: () {
                  Navigator.pop(context);
                  // Navigate to Help & Support
                },
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text("Logout"),
                onTap: () {
                  Navigator.pop(context);
                  // Handle Logout
                },
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              SizedBox(height: 10),
              Greeting(),
              SizedBox(height: 10),
              SearchField(),
              SizedBox(height: 10),
              Campaign(),
              SizedBox(height: 10),
              Category(),
              SizedBox(height: 10),
              eventNearby(),
            ],
          ),
        ),
      ),
    );
  }
}
