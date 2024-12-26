import 'package:flutter/material.dart';
import 'package:trial/widgets/Eventspage/LeaderBordWidget.dart';
import 'package:trial/widgets/Eventspage/PostTabWidget.dart';

class EventsPage extends StatefulWidget {
  const EventsPage({super.key});

  @override
  State<EventsPage> createState() => _EventsPageState();
}

class _EventsPageState extends State<EventsPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,  // Set the number of tabs you have (Post, Leaderboard)
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,  // Make AppBar transparent
          elevation: 0,  // Remove the shadow from the AppBar
          title: const Text('Events', style: TextStyle(color: Colors.black)),  // Change title text color to black
          bottom: TabBar(
            tabs: const [
              Tab(text: 'Post'),
              Tab(text: 'Leaderboard'),
            ],
            labelColor: Color(0xFF66785F),  // Active tab color
            unselectedLabelColor: Colors.black,  // Inactive tab color
            indicatorColor: Color(0xFF66785F),  // Indicator color to match active tab
          ),
        ),
        backgroundColor: Colors.transparent,  // Make Scaffold's background transparent
        body: const TabBarView(
          children: [
            PostTab(),
            LeaderboardTab(),
          ],
        ),
      ),
    );
  }
}
