import 'package:flutter/material.dart';

Widget SearchField() {
  return Container(
    height: 45,
    margin: EdgeInsets.symmetric(horizontal: 10),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
    ),
    child: TextField(
      style: TextStyle(
        color: Color.fromARGB(255, 67, 72, 66),  // Set the text color to the specified color
      ),
      decoration: InputDecoration(
        border: InputBorder.none,
        prefixIcon: Icon(
          Icons.search,
          color: Color.fromARGB(255, 67, 72, 66),  // Set the prefix icon color to the specified color
        ),
        suffixIcon: Icon(
          Icons.filter_list,
          color: Color.fromARGB(255, 67, 72, 66),  // Set the suffix icon color to the specified color
        ),
        hintText: "Search",
        hintStyle: TextStyle(
          color: Color.fromARGB(255, 67, 72, 66),  // Set the hint text color to the specified color
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),  // Adjust vertical padding
      ),
    ),
  );
}
