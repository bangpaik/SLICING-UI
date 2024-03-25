import 'package:flutter/material.dart';
import 'package:slicing_ui/screen_pages/1splash_screen.dart';
import 'package:slicing_ui/screen_pages/16sign_up_screen.dart';
import 'package:slicing_ui/screen_pages/21menu_screen.dart';
import 'package:slicing_ui/screen_pages/23medical_records_screen01.dart';

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
      home: MedicalRecordsScreen01(), //
      debugShowCheckedModeBanner: false, // Menghilangkan banner debug
    );
  }
}
