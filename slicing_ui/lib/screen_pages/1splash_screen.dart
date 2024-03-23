import 'dart:async';
import 'package:flutter/material.dart';
import 'package:slicing_ui/screen_pages/2on_boarding1.dart';
import 'package:slicing_ui/screen_pages/3on_boarding2.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    // Tambahkan timer untuk menavigasi ke halaman OnBoarding1 setelah 3 detik
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => OnBoarding1()), // Ganti OnBoarding1 dengan halaman tujuan yang sesuai
      );
    });

    return Scaffold(
      body: Container(
        color: Colors.white,
        width: screenSize.width,
        height: screenSize.height,
        child: Stack(
          children: [
            Container(
              width: screenSize.width,
              height: screenSize.height,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/bg.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Positioned(
              top: 9,
              left: 0,
              right: 0,
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '9:41',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 9,
              left: 0,
              right: 11,
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.signal_cellular_alt,
                        color: Colors.black,
                        size: 14,
                      ),
                      SizedBox(width: 5),
                      Icon(
                        Icons.signal_wifi_4_bar,
                        color: Colors.black,
                        size: 14,
                      ),
                      SizedBox(width: 5),
                      Image.asset(
                        "images/battery.png",
                        width: 20,
                      )
                      // Icons.battery_90,
                      // color: Colors.black,
                    ],
                  ),
                ),
              ),
            ),

            Positioned(
              left: screenSize.width * 0.35,
              top: screenSize.height * 0.3,
              width: screenSize.width * 0.3,
              height: screenSize.width * 0.3,
              child: Image.asset(
                'images/logo.png',
                width: screenSize.width * 0.3,
                height: screenSize.width * 0.3,
                fit: BoxFit.contain,
              ),
            ),

          ],
        ),
      ),
    );
  }
}
