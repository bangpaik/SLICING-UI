import 'package:flutter/material.dart';
import 'package:slicing_ui/screen_pages/1splash_screen.dart';
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
      // home: AllRecords(), //
      // home: Location(), //
      // home: MedicalRecordsScreen01(), //
      home: SplashScreen(), //
      // home: SettingsScreen(), //

      debugShowCheckedModeBanner: false, // Menghilangkan banner debug
    );
  }
}
