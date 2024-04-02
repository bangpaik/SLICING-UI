import 'package:flutter/material.dart';
import 'package:slicing_ui/screen_pages/17login_screen01.dart';
import 'package:slicing_ui/screen_pages/1splash_screen.dart';
import 'package:slicing_ui/screen_pages/38doctors_screen.dart';
import 'package:slicing_ui/screen_pages/40profile02.dart';
//MF
import 'package:slicing_ui/screen_pages/5home_screen.dart';
import 'package:slicing_ui/screen_pages/11favorite_doctor_screen.dart';
import 'package:slicing_ui/screen_pages/12doctor_details_screen.dart';
import 'package:slicing_ui/screen_pages/13doctor_appointment_screen.dart';
import 'package:slicing_ui/screen_pages/14doctor_appointment_screen2.dart';
import 'package:slicing_ui/screen_pages/31diagonstics_test_screen.dart';
import 'package:slicing_ui/screen_pages/32diagonstics_test_screen2.dart';
import 'package:slicing_ui/screen_pages/33patient_details_screen.dart';
import 'package:slicing_ui/screen_pages/34patient_details_screen2.dart';
//DAA
import 'package:slicing_ui/screen_pages/16sign_up_screen.dart';
import 'package:slicing_ui/screen_pages/21menu_screen.dart';
import 'package:slicing_ui/screen_pages/22my_doctors_screen.dart';
import 'package:slicing_ui/screen_pages/23medical_records_screen01.dart';
import 'package:slicing_ui/screen_pages/26all_records_screen.dart';
import 'package:slicing_ui/screen_pages/27medicine_orders.dart';
import 'package:slicing_ui/screen_pages/28location_screen.dart';
import 'package:slicing_ui/screen_pages/29medicines_orders02.dart';
import 'package:slicing_ui/screen_pages/30help_center.dart';
import 'package:slicing_ui/screen_pages/36setting_screen.dart';
import 'package:slicing_ui/screen_pages/39profile01.dart';

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
      //MF
      home: SplashScreen(),
      // home: DiagonosticTestScreen(), //31

      debugShowCheckedModeBanner: false, // Menghilangkan banner debug
    );
  }
}
