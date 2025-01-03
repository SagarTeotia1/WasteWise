import 'package:flutter/material.dart';
import 'package:get/get.dart'; // Import GetX for navigation
import 'package:animated_text_kit/animated_text_kit.dart'; // Import for typewriter effect

import 'package:trial/const/const_colo.dart';
import 'package:trial/const/const_fonts.dart';
import 'package:trial/const/const_img.dart';
import 'package:trial/screens/Auth/ChoseAvatar.dart';
import 'package:trial/screens/Home/Home_screen.dart'; // Import your LoginScreen

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Navigate to LoginScreen after 3 seconds
    Future.delayed(Duration(seconds: 2), () {
      // Use Get.off() to navigate to the LoginScreen and remove the SplashScreen from the stack
      Get.off(() => ChooseAvatarScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: homeBg, // Background color from const_Var.dart
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                mainlogo, 
                height: 200, // Increased height
                width: 200,  // Increased width
              ), // Logo image
              SizedBox(height: 20), // Adds space between the logo and the text
              Center(
                child: AnimatedTextKit(
                  animatedTexts: [
                    TypewriterAnimatedText(
                      "Connecting Communities to \n Turn Waste into Value",
                      textStyle: TextStyle(
                        fontSize: 12, // Font size
                        fontWeight: FontWeight.bold,
                        fontFamily: regularfont, // Font family from const_fonts.dart
                         // Background color for text
                      ),
                      speed: const Duration(milliseconds: 30), // Typing speed
                    ),
                  ],
                  totalRepeatCount: 1, // Runs the animation once
                  pause: const Duration(milliseconds: 500), // Pause before restarting
                  displayFullTextOnTap: true, // Display full text if tapped
                ),
              ),
              SizedBox(height: 40), // Adds space between the two texts
            ],
          ),
        ),
      ),
    );
  }
}