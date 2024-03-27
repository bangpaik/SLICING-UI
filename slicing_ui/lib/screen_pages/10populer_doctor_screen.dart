import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class PopulerDoctorScreen extends StatelessWidget {
  const PopulerDoctorScreen({Key? key}) : super(key: key);

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
                        Navigator.of(context).pop();
                      },
                      child: Image.asset(
                        'images/tombol_back.png',
                        width: 24,
                        height: 24,
                      ),
                    ),
                    SizedBox(width: 410),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Image.asset(
                        'images/search.png',
                        width: 24,
                        height: 24,
                      ),
                    ),
                  ],
                ),
              ),

              Positioned(
                left: 20,
                width: 500,
                top: 100,
                height: 21,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Text(
                        'Popular Doctor',
                        textAlign: TextAlign.left,
                        style: TextStyle(decoration: TextDecoration.none, fontSize: 18, color: const Color(0xff333333), fontFamily: 'Rubik-Medium', fontWeight: FontWeight.bold),
                        maxLines: 9999,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Positioned(
                      left: 400,
                      width: 500,
                      top: 6,
                      height: 12,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Text(
                              'See all',
                              textAlign: TextAlign.left,
                              style: TextStyle(decoration: TextDecoration.none, fontSize: 10, color: const Color(0xff677294), fontFamily: 'Rubik-Light', fontWeight: FontWeight.normal),
                              maxLines: 9999,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Positioned(
                            left: 33,
                            width: 3.385,
                            top: 5,
                            height: 6.283,
                            child: Image.asset('images/panah_kanan.png', width: 3.385, height: 6.283,),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 20,
                width: 136,
                top: 150,
                height: 200,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      width: 136,
                      top: 0,
                      height: 200,
                      child: Container(
                        width: 136,
                        height: 200,
                        decoration: BoxDecoration(
                          color: const Color(0xffffffff),
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: const [BoxShadow(color: const Color(0x14000000), offset: Offset(0, 0), blurRadius: 40),],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 22,
                      width: 92,
                      top: 138,
                      height: 45.1,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 12,
                            width: 68,
                            top: 34.9,
                            height: 10.2,
                            child: Image.asset('images/star.png', width: 68, height: 10.2,),
                          ),
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Text(
                              'Dr. Truluck Nik',
                              textAlign: TextAlign.left,
                              style: TextStyle(decoration: TextDecoration.none, fontSize: 14, color: const Color(0xff000000), fontFamily: 'Rubik-Medium', fontWeight: FontWeight.normal),
                              maxLines: 9999,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Positioned(
                            left: 6,
                            top: 19,
                            child: Text(
                              'Medicine Specialist',
                              textAlign: TextAlign.left,
                              style: TextStyle(decoration: TextDecoration.none, fontSize: 10, color: const Color(0xff677294), fontFamily: 'Rubik-Light', fontWeight: FontWeight.normal),
                              maxLines: 9999,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      left: 0,
                      width: 136,
                      top: 0,
                      height: 131,
                      child: Image.asset('images/populer_doctor1.png', width: 136, height: 131,),
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 170,
                width: 136,
                top: 150,
                height: 200,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      width: 136,
                      top: 0,
                      height: 200,
                      child: Container(
                        width: 136,
                        height: 200,
                        decoration: BoxDecoration(
                          color: const Color(0xffffffff),
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: const [BoxShadow(color: const Color(0x14000000), offset: Offset(0, 0), blurRadius: 40),],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 23,
                      width: 91,
                      top: 138,
                      height: 45.1,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 11,
                            width: 68,
                            top: 34.9,
                            height: 10.2,
                            child: Image.asset('images/star.png', width: 68, height: 10.2,),
                          ),
                          Positioned(
                            left: 5,
                            top: 0,
                            child: Text(
                              'Dr. Tranquilli',
                              textAlign: TextAlign.left,
                              style: TextStyle(decoration: TextDecoration.none, fontSize: 14, color: const Color(0xff000000), fontFamily: 'Rubik-Medium', fontWeight: FontWeight.normal),
                              maxLines: 9999,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Positioned(
                            left: 0,
                            top: 19,
                            child: Text(
                              'Patheology Specialist',
                              textAlign: TextAlign.left,
                              style: TextStyle(decoration: TextDecoration.none, fontSize: 10, color: const Color(0xff677294), fontFamily: 'Rubik-Light', fontWeight: FontWeight.normal),
                              maxLines: 9999,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      left: 0,
                      width: 136,
                      top: 0,
                      height: 131,
                      child: Image.asset('images/populer_doctor2.png', width: 136, height: 131,),
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 320,
                width: 136,
                top: 150,
                height: 200,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      width: 136,
                      top: 0,
                      height: 200,
                      child: Container(
                        width: 136,
                        height: 200,
                        decoration: BoxDecoration(
                          color: const Color(0xffffffff),
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: const [BoxShadow(color: const Color(0x14000000), offset: Offset(0, 0), blurRadius: 40),],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 22,
                      width: 92,
                      top: 138,
                      height: 45.1,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 12,
                            width: 68,
                            top: 34.9,
                            height: 10.2,
                            child: Image.asset('images/star.png', width: 68, height: 10.2,),
                          ),
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Text(
                              'Dr. Truluck Nik',
                              textAlign: TextAlign.left,
                              style: TextStyle(decoration: TextDecoration.none, fontSize: 14, color: const Color(0xff000000), fontFamily: 'Rubik-Medium', fontWeight: FontWeight.normal),
                              maxLines: 9999,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Positioned(
                            left: 6,
                            top: 19,
                            child: Text(
                              'Medicine Specialist',
                              textAlign: TextAlign.left,
                              style: TextStyle(decoration: TextDecoration.none, fontSize: 10, color: const Color(0xff677294), fontFamily: 'Rubik-Light', fontWeight: FontWeight.normal),
                              maxLines: 9999,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      left: 0,
                      width: 136,
                      top: 0,
                      height: 131,
                      child: Image.asset('images/populer_doctor1.png', width: 136, height: 131,),
                    ),
                  ],
                ),
              ),


              Positioned(
                left: 20,
                width: 500,
                top: 360,
                height: 21,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Text(
                        'Category',
                        textAlign: TextAlign.left,
                        style: TextStyle(decoration: TextDecoration.none, fontSize: 18, color: const Color(0xff333333), fontFamily: 'Rubik-Medium', fontWeight: FontWeight.bold),
                        maxLines: 9999,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                                      ],
                ),
              ),


              Positioned(
                top: 390,
                left: 16,
                right: 42,
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
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Image.asset(
                              'images/category1.png',
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
                                  'Dr. Pediatrician',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  'Specialist Cardiologist ',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: const Color(0xff677294),
                                  ),
                                ),
                                SizedBox(height: 5),
                                Row(
                                  children: [
                                    Image.asset(
                                      'images/star.png',
                                    ),
                                    SizedBox(width: 60), // Sesuaikan jarak antara gambar dan teks di sini
                                    Text(
                                      '2.4 (2475 views)',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        decoration: TextDecoration.none,
                                        fontSize: 16,
                                        color: const Color(0xff677294),
                                        fontFamily: 'PTSans-Regular',
                                        fontWeight: FontWeight.normal,
                                      ),
                                      maxLines: 9999,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
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
                          ),// Hapus Positioned widget yang berisi gambar love.png dan teks views
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              Positioned(
                top: 520,
                left: 16,
                right: 42,
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
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Image.asset(
                              'images/category2.png',
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
                                  'Dr. Mistry Brick',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  'Specialist Dentist ',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: const Color(0xff677294),
                                  ),
                                ),
                                SizedBox(height: 5),
                                Row(
                                  children: [
                                    Image.asset(
                                      'images/star.png',
                                    ),
                                    SizedBox(width: 60), // Sesuaikan jarak antara gambar dan teks di sini
                                    Text(
                                      '2.8 (2893 views)',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        decoration: TextDecoration.none,
                                        fontSize: 16,
                                        color: const Color(0xff677294),
                                        fontFamily: 'PTSans-Regular',
                                        fontWeight: FontWeight.normal,
                                      ),
                                      maxLines: 9999,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            top: -3,
                            right: -3,
                            child: Image.asset(
                              'images/likelove.png',
                              width: 20,
                              height: 20,
                            ),
                          ),// Hapus Positioned widget yang berisi gambar love.png dan teks views
                        ],
                      ),
                    ),
                  ],
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
