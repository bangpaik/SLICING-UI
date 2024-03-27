import 'package:flutter/material.dart';
import 'package:slicing_ui/screen_pages/1splash_screen.dart';
import 'package:slicing_ui/screen_pages/8doctor_selecttime_screen.dart';
import 'package:slicing_ui/screen_pages/9doctor_selecttime_screen2.dart';
import 'package:slicing_ui/screen_pages/10populer_doctor_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: DoctorSelectTimeScreen(),
      // home: DoctorSelectTimeScreenDua(),
      home: PopulerDoctorScreen(),
      // home: SignUpScreen(), //SignUpScreen
      debugShowCheckedModeBanner: false, // Menghilangkan banner debug
    );
  }
}
