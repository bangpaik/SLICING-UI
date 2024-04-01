import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:slicing_ui/screen_pages/9doctor_selecttime_screen2.dart';

class DoctorSelectTimeScreen extends StatelessWidget {
  const DoctorSelectTimeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
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
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                left: 16,
                top: 45,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => DoctorSelectTimeScreenDua(), // Navigasi ke FindDoctorsScreen
                          ),
                        );
                      },
                      child: Image.asset(
                        'images/tombol_back.png',
                        width: 24,
                        height: 24,
                      ),
                    ),
                    SizedBox(width: 8),
                    Text(
                      'Select Time',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 100,
                left: 16,
                right: 16,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width - 32,
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: const Color(0xffffffff),
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: const [
                          BoxShadow(
                            color: const Color(0x14000000),
                            offset: Offset(0, 0),
                            blurRadius: 20,
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Image.asset(
                                  'images/finddoctor1.png',
                                  height: 90,
                                  fit: BoxFit.contain,
                                ),
                              ),
                              SizedBox(width: 10),
                              Expanded(
                                flex: 2,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Dr. Shruti Kedia',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      'Upasana Dental Clinic, salt lake',
                                      style: TextStyle(
                                        fontSize: 13,
                                        color: const Color(0xff677294),
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Image.asset(
                                      'images/star.png',
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                top: -3,
                                right: -3,
                                child: Image.asset(
                                  'images/love.png',
                                  width: 20,
                                  height: 20,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 20,
                width: 130,
                top: 240,
                height: 54,
                child: Container(
                  width: 130,
                  height: 54,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        width: 130,
                        top: 0,
                        height: 54,
                        child: Container(
                          width: 130,
                          height: 54,
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: const Color(0x19677294), width: 1),
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 11,
                        width: 107.805,
                        top: 10,
                        height: 35,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              width: 107.805,
                              top: 0,
                              child: Text(
                                'Today, 23 Feb',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontSize: 16,
                                    color: const Color(0xff333333),
                                    fontFamily: 'Rubik-Medium',
                                    fontWeight: FontWeight.normal),
                                maxLines: 9999,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            Positioned(
                              left: 12.683,
                              width: 77.154,
                              top: 23,
                              child: Text(
                                'No slots available',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontSize: 10,
                                    color: const Color(0xff677294),
                                    fontFamily: 'Rubik-Light',
                                    fontWeight: FontWeight.normal),
                                maxLines: 9999,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 166,
                width: 150,
                top: 240,
                height: 54,
                child: Container(
                  width: 150,
                  height: 54,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        width: 150,
                        top: 0,
                        height: 54,
                        child: Container(
                          width: 150,
                          height: 54,
                          decoration: BoxDecoration(
                            color: const Color(0xff0ebe7f),
                            borderRadius: BorderRadius.circular(6),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 9,
                        width: 133,
                        top: 10,
                        height: 35,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Text(
                                'Tomorrow, 24 Feb',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontSize: 16,
                                    color: const Color(0xffffffff),
                                    fontFamily: 'Rubik-Medium',
                                    fontWeight: FontWeight.normal),
                                maxLines: 9999,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            Positioned(
                              left: 33,
                              top: 23,
                              child: Text(
                                '9 slots available',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontSize: 10,
                                    color: const Color(0xffffffff),
                                    fontFamily: 'Rubik-Light',
                                    fontWeight: FontWeight.normal),
                                maxLines: 9999,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 332,
                width: 150,
                top: 240,
                height: 54,
                child: Container(
                  width: 150,
                  height: 54,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        width: 150,
                        top: 0,
                        height: 54,
                        child: Container(
                          width: 150,
                          height: 54,
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: const Color(0x19677294), width: 1),
                            borderRadius: BorderRadius.circular(6),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 18,
                        width: 87,
                        top: 10,
                        height: 35,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Text(
                                'Thu, 25 Feb',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontSize: 16,
                                    color: const Color(0xff677294),
                                    fontFamily: 'Rubik-Medium',
                                    fontWeight: FontWeight.normal),
                                maxLines: 9999,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            Positioned(
                              left: 8,
                              top: 23,
                              child: Text(
                                '10 slots available',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontSize: 10,
                                    color: const Color(0xff677294),
                                    fontFamily: 'Rubik-Light',
                                    fontWeight: FontWeight.normal),
                                maxLines: 9999,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),


              Positioned(
                left: 170,
                width: 130,
                top: 320,
                height: 54,
                child: Container(
                  width: 130,
                  height: 54,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 11,
                        width: 107.805,
                        top: 10,
                        height: 35,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              width: 107.805,
                              top: 0,
                              child: Text(
                                'Today, 23 Feb',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontSize: 16,
                                    color: const Color(0xff333333),
                                    fontFamily: 'Rubik-Medium',
                                    fontWeight: FontWeight.normal),
                                maxLines: 9999,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            Positioned(
                              left: 8,
                              width: 100,
                              top: 24,
                              child: Text(
                                'No slots available',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontSize: 10,
                                    color: const Color(0xff677294),
                                    fontFamily: 'Rubik-Light',
                                    fontWeight: FontWeight.normal),
                                maxLines: 9999,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),


              Positioned(
                left: 100,
                width: 306,
                top: 480,
                height: 54,
                child: Container(
                  width: 306,
                  height: 54,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        width: 306,
                        top: 0,
                        height: 54,
                        child: Container(
                          width: 306,
                          height: 54,
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: const Color(0x7f0ebe7f), width: 1),
                            borderRadius: BorderRadius.circular(6),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 92,
                        top: 16,
                        child: Text(
                          'Contact Clinic',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 18,
                              color: const Color(0xff0ebe7f),
                              fontFamily: 'Rubik-Medium',
                              fontWeight: FontWeight.normal),
                          maxLines: 9999,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 244,
                top: 450,
                child: Text(
                  'OR',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 14,
                      color: const Color(0xff677294),
                      fontFamily: 'Rubik-Regular',
                      fontWeight: FontWeight.normal),
                  maxLines: 9999,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Positioned(
                left: 100,
                width: 306,
                top: 380,
                height: 54,
                child: Container(
                  width: 306,
                  height: 54,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        width: 306,
                        top: 0,
                        height: 54,
                        child: Container(
                          width: 306,
                          height: 54,
                          decoration: BoxDecoration(
                            color: const Color(0xff0ebe7f),
                            borderRadius: BorderRadius.circular(6),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 17,
                        top: 16,
                        child: Text(
                          'Next availability on wed, 24 Feb',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 18,
                              color: const Color(0xffffffff),
                              fontFamily: 'Rubik-Medium',
                              fontWeight: FontWeight.normal),
                          maxLines: 9999,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
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
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 5,
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
            ],
          ),
        ),
      ),
    );
  }
}
