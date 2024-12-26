import 'package:flutter/material.dart';

class ToggleWidget extends StatefulWidget {
  const ToggleWidget({Key? key}) : super(key: key);

  @override
  _ToggleWidgetState createState() => _ToggleWidgetState();
}

class _ToggleWidgetState extends State<ToggleWidget> {
  // Value to keep track of the selected option in the ToggleButtons
  int _selectedIndex = 0;

  // Value for the Switch (Non-profit or Profit)
  bool _isNonProfit = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5), // Padding around the container
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center, // Center the content horizontally
        children: [
          // Wrap ToggleButtons inside a SingleChildScrollView to make it horizontally scrollable
          SingleChildScrollView(
            scrollDirection: Axis.horizontal, // Allow horizontal scrolling
            child: ToggleButtons(
              isSelected: List.generate(3, (index) => _selectedIndex == index),
              onPressed: (index) {
                // Update the selected option
                setState(() {
                  _selectedIndex = index;
                });
              },
              children: const [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8), // Reduced padding for smaller size
                  child: Text(
                    "Food",
                    style: TextStyle(fontSize: 12, color: Colors.black), // Text color set to black
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8), // Reduced padding for smaller size
                  child: Text(
                    "Water",
                    style: TextStyle(fontSize: 12, color: Colors.black), // Text color set to black
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8), // Reduced padding for smaller size
                  child: Text(
                    "Others",
                    style: TextStyle(fontSize: 12, color: Colors.black), // Text color set to black
                  ),
                ),
              ],
              textStyle: const TextStyle(fontSize: 12, color: Colors.black), // Text color set to black
              borderRadius: BorderRadius.circular(8), // Rounded corners
              constraints: BoxConstraints(
                minHeight: 32, // Minimum height of the button
                minWidth: 80,  // Minimum width of the button
              ),
              color: Color(0xFF66785F), // Inactive button color (set to #66785F)
              selectedColor: Colors.white, // Active button text color
              selectedBorderColor: Color(0xFF66785F), // Border color when selected
              fillColor: Color(0xFF66785F), // Background color when selected
            ),
          ),
          const SizedBox(height: 20), // Space between the ToggleButtons and Switch

          // Switch for Non-profit or Profit
          Align(
            alignment: Alignment.centerRight, // Align the switch to the right
            child: SwitchListTile(
              title: const Text(
                "Non-profit Donation",
                style: TextStyle(fontSize: 14, color: Colors.black), // Text color set to black
              ),
              value: _isNonProfit,
              onChanged: (value) {
                // Toggle the switch value and maintain the state
                setState(() {
                  _isNonProfit = value;
                });
              },
              activeColor: Color(0xFF66785F), // Active color set to #66785F
              inactiveThumbColor: Color.fromARGB(255, 81, 94, 80), // Inactive thumb color set to #91AC8F
              inactiveTrackColor: Color(0xFF91AC8F), // Inactive track color set to #91AC8F
              contentPadding: EdgeInsets.zero, // Remove extra padding around the switch
            ),
          ),
        ],
      ),
    );
  }
}
