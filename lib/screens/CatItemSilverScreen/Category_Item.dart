import 'package:flutter/material.dart';
import 'package:trial/const/const_fonts.dart';
import 'package:trial/const/const_img.dart'; // Assuming logo is imported here
import 'package:trial/widgets/CatlistWidgets/cateventsWidget.dart'; // Assuming you have this widget

class CategoryItem extends StatefulWidget {
  const CategoryItem({super.key});

  @override
  State<CategoryItem> createState() => _CategoryItemState();
}

class _CategoryItemState extends State<CategoryItem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // Transparent SliverAppBar with background color
          SliverAppBar(
            floating: true,
            expandedHeight: 200,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                surplus, // Your image asset
                fit: BoxFit.cover,
              ),
              title: Text(
                'SURPLUS FOOD',
                style: TextStyle(
                  fontFamily: boldfont,
                  fontSize: 16,
                  color: Color.fromARGB(255, 13, 72, 0), // Set text color to white
                ),
              ),
            ),
            backgroundColor: Color.fromARGB(255, 178, 201, 173), // Set SliverAppBar background to B2C9AD
            elevation: 0, // Remove the shadow effect
          ),
          // SliverList with custom widget (CatEventsList) displayed only once
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  color: Color(0xFFB2C9AD), // Set background color for the list items as well
                  child: CatEventsList(), // Only one instance of the custom widget
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
