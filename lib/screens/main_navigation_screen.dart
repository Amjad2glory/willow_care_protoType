import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:willow_care/screens/schedule_page/schedule_page.dart';
import 'package:willow_care/widgets/bottom_navigation_bar.dart';

class MainNavigationScreen extends StatefulWidget {
  const MainNavigationScreen({Key? key}) : super(key: key);

  @override
  _MainNavigationScreenState createState() => _MainNavigationScreenState();
}

class _MainNavigationScreenState extends State<MainNavigationScreen> {
  final _pages = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MainBottomNavigationBar(),
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        elevation: 0,
        leading: Builder(
          builder: (context) {
            return IconButton(
              // padding: EdgeInsets.all(0),
              onPressed: () {},
              icon: Icon(Icons.filter_list_sharp),
              color: Colors.black,
            );
          },
        ),
        centerTitle: true,
        title: Text(
          'Schedule',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.grey[100],
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.settings_outlined, color: Colors.black),
          )
        ],
      ),
      body: ScheduleScreen(),
    );
  }
}
