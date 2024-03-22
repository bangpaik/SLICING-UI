import 'package:flutter/material.dart';

class OnBoarding1 extends StatelessWidget {
  const OnBoarding1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

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
              child: Image.asset(
                'images/ellipse_153.png',
                width: screenSize.width * 0.5, // Mengubah lebar gambar menjadi setengah dari lebar layar
                height: screenSize.height * 0.5, // Mengubah tinggi gambar menjadi setengah dari tinggi layar
                fit: BoxFit.fill,
              ),
            ),
            Positioned(
              left: (screenSize.width - screenSize.width * 0.5) / 2,
              top: (screenSize.height - screenSize.height * 0.5) / 2,
              child: Image.asset(
                'images/ellipse_154.png',
                width: screenSize.width * 0.5,
                height: screenSize.height * 0.4,
                fit: BoxFit.fill,
              ),
            ),

            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: screenSize.width * 0.38,
                height: screenSize.height * 0.25,
                child: GestureDetector(
                  onTap: () {
                    // Tambahkan navigasi ke halaman selanjutnya di sini
                  },
                  child: Container(
                    width: screenSize.width * 0.38,
                    height: screenSize.height * 0.25,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          left: screenSize.width * 0.10,
                          top: screenSize.height * 0.18,
                          child: Text(
                            'Skip',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 10,
                              color: const Color(0xff677294),
                              fontFamily: 'Rubik-Regular',
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 0,
                          width: screenSize.width * 0.22,
                          top: 0,
                          height: screenSize.height * 0.10,
                          child: Container(
                            width: screenSize.width * 0.25,
                            height: screenSize.height * 0.10,
                            decoration: BoxDecoration(
                              color: const Color(0xff0ebe7f),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text(
                                'Get Started',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontSize: 14,
                                  color: const Color(0xffffffff),
                                  fontFamily: 'Rubik-Medium',
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),


            Positioned(
              left: screenSize.width * 0.06,
              top: screenSize.height * 0.63,
              width: screenSize.width * 0.77,
              height: screenSize.height * 0.14,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Text(
                      'Find Trusted Doctors',
                      textAlign: TextAlign.center, // Mengatur teks rata tengah
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: screenSize.width * 0.05,
                        color: const Color(0xff333333),
                        fontFamily: 'Rubik-Medium',
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    width: screenSize.width * 0.77,
                    top: screenSize.height * 0.08,
                    height: screenSize.height * 0.06,
                    child: Text(
                      'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of it over 2000 years old.',
                      textAlign: TextAlign.center, // Mengatur teks rata tengah
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: screenSize.width * 0.02,
                        color: const Color(0xe5677294),
                        fontFamily: 'Rubik-Regular',
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ],
              ),
            ),



            Positioned(
              left: screenSize.width * 0.01,
              top: screenSize.height * 0.01,
              width: screenSize.width * 0.95,
              height: screenSize.height * 0.05,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    width: screenSize.width * 0.95,
                    top: 0,
                    height: screenSize.height * 0.05,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          width: screenSize.width * 0.15,
                          top: 0,
                          height: screenSize.height * 0.05,
                          child: Text(
                            '9:41',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 14,
                              color: const Color(0xff222222),
                              fontFamily: 'Rubik-Bold',
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                        Positioned(
                          left: screenSize.width * 0.84,
                          width: screenSize.width * 0.06,
                          top: screenSize.height * 0.005,
                          height: screenSize.height * 0.025,
                          child: Image.asset(
                            'images/battery.png',
                            width: screenSize.width * 0.06,
                            height: screenSize.height * 0.025,
                          ),
                        ),
                        Positioned(
                          right: screenSize.width * 0.08,
                          width: screenSize.width * 0.04,
                          top: screenSize.height * 0.005,
                          height: screenSize.height * 0.025,
                          child: Image.asset(
                            'images/imageWifi_3117.png',
                            width: screenSize.width * 0.04,
                            height: screenSize.height * 0.025,
                          ),
                        ),
                        Positioned(
                          right: screenSize.width * 0.04,
                          width: screenSize.width * 0.05,
                          top: screenSize.height * 0.005,
                          height: screenSize.height * 0.025,
                          child: Image.asset(
                            'images/signal.png',
                            width: screenSize.width * 0.05,
                            height: screenSize.height * 0.025,
                          ),
                        ),
                      ],
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
