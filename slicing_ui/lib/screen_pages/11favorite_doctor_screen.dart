import 'package:flutter/material.dart';
import 'package:slicing_ui/screen_pages/12doctor_details_screen.dart';

class FavoriteDoctorsScreen extends StatelessWidget {
  const FavoriteDoctorsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
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
                        builder: (context) => DoctorDetailsScreen(), // Navigasi ke FindDoctorsScreen
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
                  'Favourite Doctors',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 16,
            top: 80,
            right: 16,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 3,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Icon(Icons.search),
                  SizedBox(width: 8),
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Dentist',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.close),
                    onPressed: () {
                      // Tambahkan logika untuk menghapus teks pencarian di sini
                    },
                  ),
                ],
              ),
            ),
          ),
          // Dokter keempat
          Positioned(
            left: 270,
            width: 160,
            top: 345,
            height: 180,
            child: _buildDoctorCard(
              'Dr. Shouey',
              'Specialist Dentist',
              'images/favoritedoctor4.png',
              'images/likelove.png',
            ),
          ),
          // Dokter ketiga
          Positioned(
            left: 50,
            width: 160,
            top: 345,
            height: 180,
            child: _buildDoctorCard(
              'Dr. Shouey',
              'Specialist Medicine',
              'images/favoritedoctor3.png',
              'images/love.png',
            ),
          ),
          // Dokter kedua
          Positioned(
            left: 270,
            width: 160,
            top: 150,
            height: 180,
            child: _buildDoctorCard(
              'Dr. Christenfeld N',
              'Specialist Cancer',
              'images/favoritedoctor2.png',
              'images/love.png',
            ),
          ),
          // Dokter pertama
          Positioned(
            left: 50,
            width: 160,
            top: 150,
            height: 180,
            child: _buildDoctorCard(
              'Dr. Shouey',
              'Specialist Cardiology',
              'images/favoritedoctor1.png',
              'images/likelove.png',
            ),
          ),
          Positioned(
            left: 20,
            width: 500,
            top: 530,
            height: 21,
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  top: 0,
                  child: Text(
                    'Feature Doctor',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 18,
                      color: const Color(0xff333333),
                      fontFamily: 'Rubik-Medium',
                      fontWeight: FontWeight.bold,
                    ),
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
                          style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 10,
                            color: const Color(0xff677294),
                            fontFamily: 'Rubik-Light',
                            fontWeight: FontWeight.normal,
                          ),
                          maxLines: 9999,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Positioned(
                        left: 33,
                        width: 3.385,
                        top: 5,
                        height: 6.283,
                        child: Image.asset(
                          'images/panah_kanan.png',
                          width: 3.385,
                          height: 6.283,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),


          Positioned(
            left: 50,
            width: 96,
            top: 570,
            height: 130,
            child: Container(
              width: 96,
              height: 130,
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                borderRadius: BorderRadius.circular(6),
                boxShadow: const [BoxShadow(color: const Color(0x0f000000), offset: Offset(0, -1), blurRadius: 20),],
              ),
            ),
          ),
          Positioned(
            left: 20,
            width: 107,
            top: 660,
            height: 28,
            child: Stack(
              children: [
                Positioned(
                  left: 55,
                  top: 0,
                  child: Text(
                    'Dr. Crick',
                    textAlign: TextAlign.left,
                    style: TextStyle(decoration: TextDecoration.none, fontSize: 12, color: const Color(0xff333333), fontFamily: 'Rubik-Medium', fontWeight: FontWeight.normal),
                    maxLines: 9999,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Positioned(
                  left: 50,
                  top: 17,
                  child: Text(
                    '\$ 25.00/ hours',
                    textAlign: TextAlign.left,
                    style: TextStyle(decoration: TextDecoration.none, fontSize: 9, color: const Color(0xff0ebe7e), fontFamily: 'Rubik-Light', fontWeight: FontWeight.normal),
                    maxLines: 9999,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 71,
            width: 54,
            top: 596,
            height: 54,
            child: Image.asset('images/favoritedoctor1.png', width: 54, height: 54,),
          ),
          Positioned(
            left: 60,
            width: 77,
            top: 578.5,
            height: 9.421,
            child: Stack(
              children: [
                Positioned(
                  left: 63,
                  width: 15,
                  top: 0.421,
                  height: 9,
                  child: Text(
                    '3.7 ',
                    textAlign: TextAlign.left,
                    style: TextStyle(decoration: TextDecoration.none, fontSize: 10, color: const Color(0xff677294), fontFamily: 'PTSans-Regular', fontWeight: FontWeight.normal),
                    maxLines: 9999,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Positioned(
                  left: 48,
                  width: 9,
                  top: 0.421,
                  height: 9,
                  child: Image.asset('images/1star.png', width: 9, height: 9,),
                ),
                Positioned(
                  left: 0,
                  width: 10,
                  top: 0,
                  height: 8.947,
                  child: Image.asset('images/likelove.png', width: 10, height: 8.947,),
                ),
              ],
            ),
          ),

          Positioned(
            left: 170,
            width: 96,
            top: 570,
            height: 130,
            child: Container(
              width: 96,
              height: 130,
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                borderRadius: BorderRadius.circular(6),
                boxShadow: const [BoxShadow(color: const Color(0x0f000000), offset: Offset(0, -1), blurRadius: 20),],
              ),
            ),
          ),
          Positioned(
            left: 20,
            width: 227,
            top: 660,
            height: 28,
            child: Stack(
              children: [
                Positioned(
                  left: 175,
                  top: 0,
                  child: Text(
                    'Dr. Strain',
                    textAlign: TextAlign.left,
                    style: TextStyle(decoration: TextDecoration.none, fontSize: 12, color: const Color(0xff333333), fontFamily: 'Rubik-Medium', fontWeight: FontWeight.normal),
                    maxLines: 9999,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Positioned(
                  left: 170,
                  top: 17,
                  child: Text(
                    '\$ 22.00/ hours',
                    textAlign: TextAlign.left,
                    style: TextStyle(decoration: TextDecoration.none, fontSize: 9, color: const Color(0xff0ebe7e), fontFamily: 'Rubik-Light', fontWeight: FontWeight.normal),
                    maxLines: 9999,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 191,
            width: 54,
            top: 596,
            height: 54,
            child: Image.asset('images/featuredoctor2.png', width: 54, height: 54,),
          ),
          Positioned(
            left: 180,
            width: 77,
            top: 578.5,
            height: 9.421,
            child: Stack(
              children: [
                Positioned(
                  left: 63,
                  width: 15,
                  top: 0.421,
                  height: 9,
                  child: Text(
                    '3.0 ',
                    textAlign: TextAlign.left,
                    style: TextStyle(decoration: TextDecoration.none, fontSize: 10, color: const Color(0xff677294), fontFamily: 'PTSans-Regular', fontWeight: FontWeight.normal),
                    maxLines: 9999,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Positioned(
                  left: 48,
                  width: 9,
                  top: 0.421,
                  height: 9,
                  child: Image.asset('images/1star.png', width: 9, height: 9,),
                ),
                Positioned(
                  left: 0,
                  width: 10,
                  top: 0,
                  height: 8.947,
                  child: Image.asset('images/love.png', width: 10, height: 8.947,),
                ),
              ],
            ),
          ),

          Positioned(
            left: 290,
            width: 96,
            top: 570,
            height: 130,
            child: Container(
              width: 96,
              height: 130,
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                borderRadius: BorderRadius.circular(6),
                boxShadow: const [BoxShadow(color: const Color(0x0f000000), offset: Offset(0, -1), blurRadius: 20),],
              ),
            ),
          ),
          Positioned(
            left: 12,
            width: 427,
            top: 660,
            height: 28,
            child: Stack(
              children: [
                Positioned(
                  left: 295,
                  top: 0,
                  child: Text(
                    'Dr. Lachinet',
                    textAlign: TextAlign.left,
                    style: TextStyle(decoration: TextDecoration.none, fontSize: 12, color: const Color(0xff333333), fontFamily: 'Rubik-Medium', fontWeight: FontWeight.normal),
                    maxLines: 9999,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Positioned(
                  left: 290,
                  top: 17,
                  child: Text(
                    '\$ 22.00/ hours',
                    textAlign: TextAlign.left,
                    style: TextStyle(decoration: TextDecoration.none, fontSize: 9, color: const Color(0xff0ebe7e), fontFamily: 'Rubik-Light', fontWeight: FontWeight.normal),
                    maxLines: 9999,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 311,
            width: 54,
            top: 596,
            height: 54,
            child: Image.asset('images/featuredoctor3.png', width: 54, height: 54,),
          ),
          Positioned(
            left: 300,
            width: 77,
            top: 578.5,
            height: 9.421,
            child: Stack(
              children: [
                Positioned(
                  left: 63,
                  width: 15,
                  top: 0.421,
                  height: 9,
                  child: Text(
                    '2.9 ',
                    textAlign: TextAlign.left,
                    style: TextStyle(decoration: TextDecoration.none, fontSize: 10, color: const Color(0xff677294), fontFamily: 'PTSans-Regular', fontWeight: FontWeight.normal),
                    maxLines: 9999,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Positioned(
                  left: 48,
                  width: 9,
                  top: 0.421,
                  height: 9,
                  child: Image.asset('images/1star.png', width: 9, height: 9,),
                ),
                Positioned(
                  left: 0,
                  width: 10,
                  top: 0,
                  height: 8.947,
                  child: Image.asset('images/likelove.png', width: 10, height: 8.947,),
                ),
              ],
            ),
          ),


          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: 60,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 3,
                    offset: Offset(0, -1),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildBottomNavBarItem('images/menuhome.png', () {}),
                  _buildBottomNavBarItem('images/menulove.png', () {}),
                  _buildBottomNavBarItem('images/menubook.png', () {}),
                  _buildBottomNavBarItem('images/menuchat.png', () {}),
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
    );
  }

  Widget _buildDoctorCard(
      String doctorName,
      String doctorSpecialization,
      String imagePath,
      String likeImagePath,
      ) {
    return Stack(
      children: [
        Container(
          width: 160,
          height: 180,
          decoration: BoxDecoration(
            color: const Color(0xffffffff),
            borderRadius: BorderRadius.circular(6),
            boxShadow: const [
              BoxShadow(
                color: const Color(0x0f000000),
                offset: Offset(0, -1),
                blurRadius: 20,
              ),
            ],
          ),
        ),
        Positioned(
          left: 35,
          width: 90,
          top: 25,
          height: 131,
          child: Stack(
            children: [
              Positioned(
                left: 0,
                width: 90,
                top: 95,
                height: 36,
                child: Stack(
                  children: [
                    Positioned(
                      left: 8,
                      top: 0,
                      child: Text(
                        doctorName,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 15,
                          color: const Color(0xff333333),
                          fontFamily: 'Rubik-Medium',
                          fontWeight: FontWeight.normal,
                        ),
                        maxLines: 9999,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Positioned(
                      left: 0,
                      top: 22,
                      child: Text(
                        doctorSpecialization,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 12,
                          color: const Color(0xff0ebe7e),
                          fontFamily: 'Rubik-Regular',
                          fontWeight: FontWeight.normal,
                        ),
                        maxLines: 9999,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 3,
                width: 84,
                top: 0,
                height: 84,
                child: Image.asset(
                  imagePath,
                  width: 84,
                  height: 84,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          left: 133.117,
          width: 16.765,
          top: 10,
          height: 15,
          child: Image.asset(
            likeImagePath,
            width: 16.765,
            height: 15,
          ),
        ),
      ],
    );
  }

  Widget _buildBottomNavBarItem(String imagePath, Function() onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Image.asset(
        imagePath,
        width: 30,
        height: 30,
      ),
    );
  }
}
