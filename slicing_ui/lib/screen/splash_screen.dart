import 'package:flutter/material.dart';

void main() {
  runApp(const FigmaToCodeApp());
}

class FigmaToCodeApp extends StatelessWidget {
  const FigmaToCodeApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: Stack(
          children: [
            Positioned(
              left: -100,
              top: -33,
              child: Container(
                width: 518,
                height: 898,
                child: Stack(
                  children: [
                    Positioned(
                      left: 302,
                      top: 682,
                      child: Container(
                        width: 216,
                        height: 216,
                        decoration: BoxDecoration(
                          color: const Color(0x4C0EBE7E),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 216,
                        height: 216,
                        decoration: BoxDecoration(
                          color: const Color(0xB760CDFF),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 85,
              top: 353,
              child: Column(
                children: [
                  Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35),
                      color: Colors.transparent,
                      border: Border.all(color: Colors.white, width: 1),
                    ),
                    child: Icon(
                      Icons.favorite,
                      color: Colors.white,
                      size: 50,
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Doctor Hunt',
                    style: TextStyle(
                      color: const Color(0xFF222222),
                      fontSize: 25,
                      fontFamily: 'Rubik',
                      fontWeight: FontWeight.w700,
                      letterSpacing: -0.30,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 6,
              top: 9,
              child: Row(
                children: [
                  SizedBox(
                    width: 54,
                    child: Text(
                      '9:41',
                      style: TextStyle(
                        color: const Color(0xFF222222),
                        fontSize: 14,
                        fontFamily: 'Rubik',
                        fontWeight: FontWeight.w500,
                        letterSpacing: -0.30,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    width: 35,
                    height: 20,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: Text(
                        'AM',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
