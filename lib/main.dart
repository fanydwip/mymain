import 'package:flutter/material.dart';
import 'package:mymain/Screens/home_view.dart';
import 'package:mymain/homePage.dart';
import 'package:mymain/loginPage.dart';
import 'package:mymain/registrationPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {  
    return MaterialApp(
// Suggested code may be subject to a license. Learn more: ~LicenseLog:1944089679.
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
        debugShowCheckedModeBanner: false,
        home: Loginpage());
  }
}

