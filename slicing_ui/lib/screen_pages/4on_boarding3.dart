import 'package:flutter/material.dart';

class OnBoarding3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Container(
        width: 300,
        height: 600,
        decoration: BoxDecoration(
          color: const Color(0xffffffff),
        ),
        child: Stack(
          children: [
            Positioned(
              left: 180,
              width: 150,
              top: 400,
              height: 150,
              child: Image.asset('images/containerImage_969.png', width: 150, height: 150,),
            ),
            Positioned(
              left: 20,
              width: 295,
              top: 500,
              height: 91,
              child: Container(
                width: 295,
                height: 91,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: 135,
                      top: 68,
                      child: Text(
                        'Skip',
                        textAlign: TextAlign.center,
                        style: TextStyle(decoration: TextDecoration.none, fontSize: 10, color: const Color(0xff677294), fontFamily: 'Rubik-Regular', fontWeight: FontWeight.normal),
                        maxLines: 9999,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Positioned(
                      left: 0,
                      width: 295,
                      top: 0,
                      height: 54,
                      child: Container(
                        width: 295,
                        height: 54,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xff0ebe7f),
                        ),
                        child: Center(
                          child: Text(
                            'Get Started',
                            textAlign: TextAlign.center,
                            style: TextStyle(decoration: TextDecoration.none, fontSize: 14, color: const Color(0xffffffff), fontFamily: 'Rubik-Medium', fontWeight: FontWeight.normal),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 19,
              width: 260,
              top: 380,
              height: 90,
              child: Stack(
                children: [
                  Positioned(
                    left: 10,
                    top: 0,
                    child: Text(
                      'Easy Appointments',
                      textAlign: TextAlign.center,
                      style: TextStyle(decoration: TextDecoration.none, fontSize: 20, color: const Color(0xff333333), fontFamily: 'Rubik-Medium', fontWeight: FontWeight.normal),
                      maxLines: 9999,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Positioned(
                    left: 0,
                    width: 260,
                    top: 30,
                    height: 60,
                    child: Text(
                      'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of it over 2000 years old.',
                      textAlign: TextAlign.center,
                      style: TextStyle(decoration: TextDecoration.none, fontSize: 10, color: const Color(0xe5677294), fontFamily: 'Rubik-Regular', fontWeight: FontWeight.normal),
                      maxLines: 9999,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: -50,
              width: 300,
              top: -50,
              height: 300,
              child: Image.asset('images/imageBg_169571.png', width: 300, height: 300,),
            ),
            Positioned(
              left: 0,
              width: 260,
              top: 0,
              height: 18,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    width: 54,
                    top: 0,
                    height: 18,
                    child: Text(
                      '9:41',
                      textAlign: TextAlign.center,
                      style: TextStyle(decoration: TextDecoration.none, fontSize: 10, color: const Color(0xff222222), fontFamily: 'Rubik-Bold', fontWeight: FontWeight.normal),
                      maxLines: 9999,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Positioned(
                    left: 250,
                    width: 25,
                    top: 3,
                    height: 11,
                    child: Image.asset('images/battery.png', width: 25, height: 11,),
                  ),
                  Positioned(
                    right: 15,
                    width: 15,
                    top: 3,
                    height: 10,
                    child: Image.asset('images/imageWifi_3117.png', width: 15, height: 10,),
                  ),
                  Positioned(
                    right: 30,
                    width: 15,
                    top: 3,
                    height: 10,
                    child: Image.asset('images/signal.png', width: 15, height: 10,),
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
