import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:willow_care/screens/doctorOverview/doctor_overview_screen.dart';
import 'package:willow_care/screens/main_navigation_screen.dart';
import 'package:willow_care/screens/schedule_page/schedule_page.dart';
import 'package:willow_care/widgets/doctor_info_card.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainNavigationScreen(),
      routes: {'doctor-overview': (ctx) => DoctorOverviewScreen()},
    );
  }
}
