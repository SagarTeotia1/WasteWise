import 'package:flutter/material.dart';

class RadioList extends StatefulWidget {
  @override
  _RadioListState createState() => _RadioListState();
}

class _RadioListState extends State<RadioList> {
  // Selected value for the radio buttons
  String? selectedItem;

  // List of items for the radio list
  final List<String> items = [
    'Edible: Safe for consumption.',
    'Storable: Suitable for storage.',
    'Waste: For compost or disposal.',
    'Animal: Usable as animal feed.',
    'Reheat: Needs minor preparation.',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.map((item) {
        return RadioListTile<String>(
          title: Text(
            item,
            style: TextStyle(
              fontSize: 11, // Set the font size to 11
            ),
          ),
          value: item,
          groupValue: selectedItem, // Grouping the radio buttons
          onChanged: (String? value) {
            setState(() {
              selectedItem = value; // Update selected value
            });
          },
          activeColor: Color(0xFF91AC8F), // Change the color of the selected radio button
        );
      }).toList(),
    );
  }
}
