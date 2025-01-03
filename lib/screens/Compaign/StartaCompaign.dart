import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:trial/const/const_colo.dart';
import 'package:trial/screens/Home/Home_screen.dart';

class StartCampaignScreen extends StatefulWidget {
  @override
  _StartCampaignScreenState createState() => _StartCampaignScreenState();
}

class _StartCampaignScreenState extends State<StartCampaignScreen> {
  final _formKey = GlobalKey<FormState>();
  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _locationController = TextEditingController();
  final _goalController = TextEditingController();
  final _volunteersController = TextEditingController();
  DateTime? _startDate;
  DateTime? _endDate;
  String _selectedCampaignType = 'Food Sharing';
  String _selectedCategory = 'Community';

  // Date picker function
  Future<void> _selectDate(BuildContext context, bool isStartDate) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != (isStartDate ? _startDate : _endDate))
      setState(() {
        if (isStartDate) {
          _startDate = picked;
        } else {
          _endDate = picked;
        }
      });
  }

  // Campaign submission function
  void _submitCampaign() {
    if (_formKey.currentState!.validate()) {
      // Form validation success
      print('Campaign Submitted');
      // Here you can send the data to your server or database
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: homeBg,
      appBar: AppBar(
        leading: IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () {
          Get.off(() => HomeScreen());
        },
      ),
        title: Text('Start a Campaign'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              // Title field
              TextFormField(
                controller: _titleController,
                decoration: InputDecoration(
                  labelText: 'Campaign Title',
                  hintText: 'Enter campaign title',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a campaign title';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16),

              // Description field
              TextFormField(
                controller: _descriptionController,
                decoration: InputDecoration(
                  labelText: 'Campaign Description',
                  hintText: 'Describe your campaign and its goals',
                  border: OutlineInputBorder(),
                ),
                maxLines: 4,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a description';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16),

              // Campaign Type selection
              DropdownButtonFormField<String>(
                value: _selectedCampaignType,
                onChanged: (String? newValue) {
                  setState(() {
                    _selectedCampaignType = newValue!;
                  });
                },
                decoration: InputDecoration(
                  labelText: 'Campaign Type',
                  border: OutlineInputBorder(),
                ),
                items: <String>['Food Sharing', 'Water Repurposing', 'Sanitation Improvement']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              SizedBox(height: 16),

              // Location field
              TextFormField(
                controller: _locationController,
                decoration: InputDecoration(
                  labelText: 'Location',
                  hintText: 'Enter campaign location',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a location';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16),

              // Start Date picker
              GestureDetector(
                onTap: () => _selectDate(context, true),
                child: AbsorbPointer(
                  child: TextFormField(
                    controller: TextEditingController(
                      text: _startDate == null
                          ? ''
                          : '${_startDate?.toLocal()}'.split(' ')[0],
                    ),
                    decoration: InputDecoration(
                      labelText: 'Start Date',
                      hintText: 'Select campaign start date',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16),

              // End Date picker
              GestureDetector(
                onTap: () => _selectDate(context, false),
                child: AbsorbPointer(
                  child: TextFormField(
                    controller: TextEditingController(
                      text: _endDate == null
                          ? ''
                          : '${_endDate?.toLocal()}'.split(' ')[0],
                    ),
                    decoration: InputDecoration(
                      labelText: 'End Date',
                      hintText: 'Select campaign end date',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16),

              // Goal field
              TextFormField(
                controller: _goalController,
                decoration: InputDecoration(
                  labelText: 'Target Goal',
                  hintText: 'Set your target goal',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a target goal';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16),

              // Volunteers field
              TextFormField(
                controller: _volunteersController,
                decoration: InputDecoration(
                  labelText: 'Number of Volunteers Needed',
                  hintText: 'Enter number of volunteers',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter number of volunteers';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16),

              // Campaign Category selection
              DropdownButtonFormField<String>(
                value: _selectedCategory,
                onChanged: (String? newValue) {
                  setState(() {
                    _selectedCategory = newValue!;
                  });
                },
                decoration: InputDecoration(
                  labelText: 'Campaign Category',
                  border: OutlineInputBorder(),
                ),
                items: <String>['Community', 'School', 'Citywide']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              SizedBox(height: 16),

              // Image upload button
              ElevatedButton(
                onPressed: () {
                  // Image upload logic here
                },
                child: Text('Upload Image'),
              ),
              SizedBox(height: 16),

              // Action buttons with fixed size to prevent overflow
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: _submitCampaign,
                      child: Text('Publish Campaign'),
                    ),
                  ),
                  SizedBox(width: 10), // Add space between buttons if needed
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        // Save draft logic here
                      },
                      child: Text('Save Draft'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
