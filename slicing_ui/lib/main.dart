import 'package:flutter/material.dart';
import 'package:slicing_ui/screen_pages/1splash_screen.dart';
import 'package:slicing_ui/screen_pages/11favorite_doctor_screen.dart';
import 'package:slicing_ui/screen_pages/12doctor_details_screen.dart';
import 'package:slicing_ui/screen_pages/13doctor_appointment_screen.dart';
import 'package:slicing_ui/screen_pages/14doctor_appointment_screen2.dart';
import 'package:slicing_ui/screen_pages/31diagonstics_test_screen.dart';
import 'package:slicing_ui/screen_pages/32diagonstics_test_screen2.dart';
import 'package:slicing_ui/screen_pages/33patient_details_screen.dart';
import 'package:slicing_ui/screen_pages/34patient_details_screen2.dart';

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
      home: FavoriteDoctorsScreen(), //11
      // home: DoctorDetailsScreen(), //12
      // home: DoctorAppointmentScreen(), //13
      // home: DoctorAppointmentScreenDua(), //14
      // home: DiagonosticTestScreen(), //31
      // home: DiagonosticTestScreenDua(), //32
      // home: PatientDetailsScreen(),  //33
      // home: PatientDetailsScreenDua(), //34
      debugShowCheckedModeBanner: false, // Menghilangkan banner debug
    );
  }
}
