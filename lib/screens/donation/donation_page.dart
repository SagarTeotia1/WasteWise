import 'package:flutter/material.dart';
import 'package:trial/widgets/DonationpageWidgets/DonateditemCategory.dart';
import 'package:trial/widgets/DonationpageWidgets/DonationEeventNEarby.dart';
import 'package:trial/widgets/DonationpageWidgets/DonationTitleWidget.dart';
import 'package:trial/widgets/Eventspage/LeaderBordWidget.dart';
import 'package:trial/widgets/searchfieldWidget.dart';

class DonationPage extends StatefulWidget {
  const DonationPage({super.key});

  @override
  State<DonationPage> createState() => _DonationPageState();
}

class _DonationPageState extends State<DonationPage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WiseWaste'),
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(text: 'Donation'),
            Tab(text: 'Leaderboard'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          _buildDonationTab(),
          LeaderboardTab(),
        ],
      ),
    );
  }

  Widget _buildDonationTab() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            SearchField(),
            
            DonatedItemCategory(),
            const SizedBox(height: 20),
            DonationeventNearby(),
            const SizedBox(height: 20),
            DonationeventNearby(),
            const SizedBox(height: 20),
            DonationeventNearby(),
            const SizedBox(height: 20),
            DonationeventNearby(),
          ],
        ),
      ),
    );
  }
}


