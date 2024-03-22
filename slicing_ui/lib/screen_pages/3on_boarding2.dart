import 'package:flutter/material.dart';

class OnBoarding2 extends StatefulWidget {
  OnBoarding2({super.key});

  @override
  State<StatefulWidget> createState() => _OnBoarding2();
}

class _OnBoarding2 extends State<OnBoarding2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Container(
        width: 375,
        height: 812,
        decoration: BoxDecoration(
          color: const Color(0xffffffff),
        ),
        child: Stack(
          children: [
            Positioned(
              left: 200,
              width: 216,
              top: 641,
              height: 216,
              child: Image.asset('images/imageBg_169568.png', width: 216, height: 216,),
            ),
            Positioned(
              left: 40,
              width: 295,
              top: 678,
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
                        style: TextStyle(decoration: TextDecoration.none, fontSize: 14, color: const Color(0xff677294), fontFamily: 'Rubik-Regular', fontWeight: FontWeight.normal),
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
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              width: 295,
                              top: 0,
                              height: 54,
                              child: Container(
                                width: 295,
                                height: 54,
                                decoration: BoxDecoration(
                                  color: const Color(0xff0ebe7f),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 97,
                              width: 102,
                              top: 19,
                              height: 17,
                              child: Text(
                                'Get Started',
                                textAlign: TextAlign.left,
                                style: TextStyle(decoration: TextDecoration.none, fontSize: 18, color: const Color(0xffffffff), fontFamily: 'Rubik-Medium', fontWeight: FontWeight.normal),
                                maxLines: 9999,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 36,
              width: 304,
              top: 411,
              height: 115,
              child: Stack(
                children: [
                  Positioned(
                    left: 10,
                    top: 0,
                    child: Text(
                      'Choose Best Doctors',
                      textAlign: TextAlign.center,
                      style: TextStyle(decoration: TextDecoration.none, fontSize: 28, color: const Color(0xff333333), fontFamily: 'Rubik-Medium', fontWeight: FontWeight.normal),
                      maxLines: 9999,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Positioned(
                    left: 0,
                    width: 304,
                    top: 45,
                    height: 70,
                    child: Text(
                      'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of it over 2000 years old.',
                      textAlign: TextAlign.center,
                      style: TextStyle(decoration: TextDecoration.none, fontSize: 14, color: const Color(0xe5677294), fontFamily: 'Rubik-Regular', fontWeight: FontWeight.normal),
                      maxLines: 9999,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 20,
              width: 497,
              top: -20,
              height: 447,
              child: Image.asset('images/imageBg_169568.png', width: 497, height: 447,),
            ),
            Positioned(
              left: 6,
              width: 349,
              top: 9,
              height: 18,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    width: 349,
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
                            style: TextStyle(decoration: TextDecoration.none, fontSize: 14, color: const Color(0xff222222), fontFamily: 'Rubik-Bold', fontWeight: FontWeight.normal),
                            maxLines: 9999,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Positioned(
                          left: 326.008,
                          width: 22.992,
                          top: 2.956,
                          height: 10.711,
                          child: Image.asset('images/battery.png', width: 22.992, height: 10.711,),
                        ),
                        Positioned(
                          right: 27.717000000000027,
                          width: 14.491,
                          top: 2.953,
                          height: 10.396,
                          child: Image.asset('images/imageWifi_3117.png', width: 14.491, height: 10.396,),
                        ),
                        Positioned(
                          right: 46.934,
                          width: 16.066,
                          top: 3.271,
                          height: 10.081,
                          child: Image.asset('images/signal.png', width: 16.066, height: 10.081,),
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