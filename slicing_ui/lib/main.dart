import 'package:flutter/material.dart';
import 'package:slicing_ui/screen_pages/1splash_screen.dart';
import 'package:slicing_ui/screen_pages/11favorite_doctor_screen.dart';
import 'package:slicing_ui/screen_pages/12doctor_details_screen.dart';

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
      // home: FavoriteDoctorsScreen(),
      home: DoctorDetailsScreen(),
      // home: PopulerDoctorScreen(),
      debugShowCheckedModeBanner: false, // Menghilangkan banner debug
    );
  }
}
