import 'package:flutter/material.dart';
import 'View/UI/AddReminderScreen.dart';
import 'View/UI/CallScreen.dart';
import 'View/UI/DonorScreen.dart';
import 'View/UI/MainScreen.dart';
import 'View/UI/ProfileScreen.dart';
import 'View/UI/ProfileScreen2.dart';
import 'View/UI/ReminderScreen.dart';
import 'View/UI/RequestScreen.dart';
import 'View/UI/SearchFilter.dart';
import 'View/UI/SplachScreen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(), // Use the SplashScreen widget here
      routes: {
        '/main': (context) => MainScreen(), // Replace MainScreen with your main screen
        '/DonorScreenList' : (context) => DonorScreenList(),
        '/ProfileScreen' : (context) => ProfileScreen(),
        '/ProfileScreen2' : (context) => ProfileScreen2(),
        '/AddReminder' : (context) => AddReminder(),
        '/SearchFilter' : (context) => SearchFilter(),
        '/ReminderScreen' : (context) => ReminderScreen(),
        '/CallScreenList' : (context) => CallScreenList(),
        '/BloodRequest' : (context) => BloodRequest(),
      },
    );
  }
}