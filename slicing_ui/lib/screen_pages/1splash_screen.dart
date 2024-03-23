import 'dart:async';
import 'package:flutter/material.dart';
import 'package:slicing_ui/screen_pages/4on_boarding3.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    // Tambahkan timer untuk menavigasi ke halaman OnBoarding1 setelah 3 detik
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => OnBoarding3()), // Ganti OnBoarding1 dengan halaman tujuan yang sesuai
      );
    });

    return Scaffold(
      body: Container(
        color: Colors.white,
        width: screenSize.width,
        height: screenSize.height,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              top: 0,
              width: screenSize.width,
              height: screenSize.width * 0.5,
              child: Image.asset(
                'images/ellipse_142.png',
                width: screenSize.width,
                height: screenSize.width * 0.5,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              right: 0,
              bottom: 0,
              width: screenSize.width,
              height: screenSize.width * 0.5,
              child: Image.asset(
                'images/ellipse_143.png',
                width: screenSize.width,
                height: screenSize.width * 0.5,
                fit: BoxFit.cover,
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
            Positioned(
              left: screenSize.width * 0.02,
              top: screenSize.height * 0.01,
              width: screenSize.width * 0.93,
              height: screenSize.height * 0.03,
              child: Stack(
                children: [
                  Positioned(
                    left: screenSize.width * 0.01,
                    top: 0,
                    width: screenSize.width * 0.15,
                    height: screenSize.height * 0.03,
                    child: Text(
                      '9:41',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 10,
                        color: const Color(0xff222222),
                        fontFamily: 'Rubik',
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 9999,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Positioned(
                    right: screenSize.width * 0.073,
                    top: screenSize.height * 0.003,
                    width: screenSize.width * 0.07,
                    height: screenSize.height * 0.013,
                    child: Image.asset(
                      'images/battery.png',
                      width: screenSize.width * 0.07,
                      height: screenSize.height * 0.013,
                    ),
                  ),
                  Positioned(
                    right: screenSize.width * 0.036,
                    top: screenSize.height * 0.003,
                    width: screenSize.width * 0.047,
                    height: screenSize.height * 0.013,
                    child: Image.asset(
                      'images/imageWifi_3117.png',
                      width: screenSize.width * 0.047,
                      height: screenSize.height * 0.013,
                    ),
                  ),
                  Positioned(
                    right: screenSize.width * 0.012,
                    top: screenSize.height * 0.003,
                    width: screenSize.width * 0.032,
                    height: screenSize.height * 0.013,
                    child: Image.asset(
                      'images/signal.png',
                      width: screenSize.width * 0.032,
                      height: screenSize.height * 0.013,
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
