import 'package:flutter/material.dart';
import 'screen/splash_screen.dart'; // Impor splash_screen.dart

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Slicing UI - TIM 5',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(), // Mengatur SplashScreen sebagai home
      debugShowCheckedModeBanner: false, // Menghilangkan debug banner
    );
  }
}
