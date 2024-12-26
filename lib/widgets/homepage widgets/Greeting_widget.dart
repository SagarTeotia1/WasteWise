import 'package:flutter/material.dart';
import 'package:trial/const/const_Var.dart';
import 'package:trial/const/const_fonts.dart';

Widget Greeting() {
  return FractionallySizedBox(
    alignment: Alignment.centerLeft,  // Aligning to the left
    widthFactor: 0.8,  // Controls the width (80% of the parent width)
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,  // Align texts to the left
      children: [
        Text(
          Greetname,
          style: TextStyle(
            fontFamily: regularfont,
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.teal,
          ),
        ),
        SizedBox(height: 3),// Adds some space between the two texts
        Text(
          "What are you doing today?",
          style: TextStyle(
            fontFamily: regularfont,
            fontSize: 16, // Optional: Adjust the font size for the second text
            fontWeight: FontWeight.normal,  // You can adjust this too
            color: Colors.white,
          ),
        ),
      ],
    ),
  );
}
