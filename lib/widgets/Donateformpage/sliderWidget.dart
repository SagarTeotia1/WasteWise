import 'package:flutter/material.dart';

class Sliderwidget extends StatefulWidget {
  const Sliderwidget({super.key});

  @override
  State<Sliderwidget> createState() => _SliderwidgetState();
}

class _SliderwidgetState extends State<Sliderwidget> {
  double _mealQuantity = 1.0; // Initial meal quantity value

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center, // Center the content vertically
        crossAxisAlignment: CrossAxisAlignment.start, // Align all children to the start (left)
        children: [
          // Aligning the text to the left
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Meal Quantity: ${_mealQuantity.toStringAsFixed(0)}',
              style: const TextStyle(
                fontSize: 14.0, // Small font size
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          // Slider widget to adjust meal quantity
          Slider(
            value: _mealQuantity,
            min: 1.0,
            max: 100.0, // Updated max value to 100
            divisions: 99, // Divisions for integer values (1 to 100)
            label: _mealQuantity.toStringAsFixed(0), // Show integer value of the slider
            onChanged: (double value) {
              setState(() {
                _mealQuantity = value; // Update meal quantity when slider changes
              });
            },
            // Set the active and inactive color with a gradient
            activeColor: Color(0xFF66785F), // Color for the part of the slider that's active
            inactiveColor: Color(0xFF91AC8F), // Color for the part of the slider that's inactive
            thumbColor: Colors.green, // Color for the thumb (the draggable part)
            overlayColor: MaterialStateProperty.all(Colors.green.withOpacity(0.2)), // Color when hovering over the thumb
          ),
          const SizedBox(height: 20), // Space between slider and text
        ],
      ),
    );
  }
}
