import 'package:flutter/material.dart';
import 'package:slicing_ui/screen_pages/1splash_screen.dart';
import 'package:slicing_ui/screen_pages/6doctor_livechat_screen.dart';
import 'package:slicing_ui/screen_pages/7find_doctors_screen.dart';
import 'package:slicing_ui/screen_pages/16sign_up_screen.dart';

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
      home: FindDoctorsScreen(), //SplashScreen
      // home: SignUpScreen(), //SignUpScreen
      debugShowCheckedModeBanner: false, // Menghilangkan banner debug
    );
  }
}
