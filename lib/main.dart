import 'package:angle_on/constants/app_constants.dart';
import 'package:angle_on/screens/MyBottomNavigationBar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Angle on',
      theme: ThemeData(
        bottomNavigationBarTheme: BottomNavigationBarThemeData(backgroundColor: AppConstants.primaryAngleOnColor),
        primaryColor: AppConstants.primaryAngleOnColor,
        scaffoldBackgroundColor: AppConstants.primaryAngleOnColor,
        appBarTheme: AppBarTheme(color: AppConstants.primaryAngleOnColor)
      ),
      home: const MyBottomNavigationBar(),
    );
  }
}
