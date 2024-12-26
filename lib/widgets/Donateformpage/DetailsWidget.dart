import 'package:flutter/material.dart';
import 'package:trial/const/const_fonts.dart';

Widget detailsWidget() {
  return Container(
    padding: const EdgeInsets.all(5.0), // Padding for spacing inside the container
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start, // Align text to the left
      children: [
        // Name Label and TextField
        Text("Name", style: TextStyle(fontSize: 12.0, fontFamily: regularfont)),
          SizedBox(height: 5,),
        Container(
          height: 50, // Set a custom height for the TextField
          child: TextField(
            decoration: InputDecoration(
              labelText: 'Name', // Label for the name field
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12), // Rounded corners with 12px radius
              ),
            ),
          ),
        ),
        SizedBox(height: 10), // Space between Name and Address fields

        // Address Label and TextField
        Text("Address", style: TextStyle(fontSize: 12.0, fontFamily: regularfont)),
          SizedBox(height: 5,),
        Container(
          height: 50, // Set a custom height for the TextField
          child: TextField(
            decoration: InputDecoration(
              labelText: 'Address', // Label for the address field
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12), // Rounded corners with 12px radius
              ),
            ),
          ),
        ),
        SizedBox(height: 10), // Space between Address and Description fields

        // Description Label and TextField
        Text("Description", style: TextStyle(fontSize: 12.0, fontFamily: regularfont)),
        SizedBox(height: 5,),
        Container(
          height: 100, // Increased height for a larger input field
          child: TextField(
            maxLines: 4, // Allow for multiple lines
            decoration: InputDecoration(
              labelText: 'Enter a description', // Label for the description field
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12), // Rounded corners with 12px radius
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
