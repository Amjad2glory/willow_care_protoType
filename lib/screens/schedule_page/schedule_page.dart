import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:willow_care/screens/schedule_page/tabs/accepted_tab.dart';
import 'package:willow_care/screens/schedule_page/tabs/upcoming_tab.dart';

class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({Key? key}) : super(key: key);

  @override
  _ScheduleScreenState createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Container(
              padding: const EdgeInsets.all(4),
              height: 50,
              // width: 327,
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(4)),
              child: TabBar(
                indicator: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(7)),
                labelColor: Colors.blue,
                unselectedLabelColor: Colors.grey[600],
                tabs: const [
                  Tab(
                    text: 'Upcoming',
                  ),
                  Tab(
                    text: 'Accepted',
                  )
                ],
              ),
            ),
          ),
          Expanded(
              child: TabBarView(
            children: [
              Center(
                child: UpcomingTab(),
              ),
              AcceptedTab(),
            ],
          ))
        ],
      ),
    );
  }
}
