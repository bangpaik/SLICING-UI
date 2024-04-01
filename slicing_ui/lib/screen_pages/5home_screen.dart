import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          width: screenSize.width,
          child: Stack(
            children: [
              Image.asset(
                "images/bg.png",
                fit: BoxFit.cover,
                width: screenSize.width,
                height: screenSize.height,
              ),
              Positioned(
                top: 0,
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
                left: 20,
                width: 500,
                top: 665,
                height: 21,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Text(
                        'Popular Doctor',
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
                left: 20,
                width: 500,
                top: 1070,
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

              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Positioned(
                    top: 0,
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
                  Container(
                    height: screenSize.height * 0.25,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(14, 190, 127, 1),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20.0),
                        bottomRight: Radius.circular(20.0),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20), // Batas left: 20
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 5), // Jarak antara gravatar dan teks
                              Text(
                                '\n\nHi Handwerker!',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              Text(
                                'Find Your Doctor',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            radius: 25,
                            backgroundImage: AssetImage('images/5gravatar.png'),
                          ),
                        ),
                      ],
                    ),
                  ),


                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.search),
                            SizedBox(width: 8),
                            Expanded(
                              child: TextFormField(
                                decoration: InputDecoration(
                                  hintText: 'Search.....',
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
                        SizedBox(height: 20),
                        Text(
                          'Live Doctors',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              _buildDoctorCard('images/livedoctor1.png'),
                              SizedBox(width: 5),
                              _buildDoctorCard('images/livedoctor2.png'),
                              SizedBox(width: 5),
                              _buildDoctorCard('images/livedoctor3.png'),
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              _buildIconCard('images/5gigi.png'),
                              SizedBox(width: 5),
                              _buildIconCard('images/5jantung.png'),
                              SizedBox(width: 5),
                              _buildIconCard('images/5mata.png'),
                              SizedBox(width: 5),
                              _buildIconCard('images/5pinggang.png'),
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          '',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              _buildPopulerDoctorCard('images/5populerdoctor1.png'),
                              SizedBox(width: 15),
                              _buildPopulerDoctorCard('images/5populerdoctor2.png'),
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          '',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              _buildFeatureDoctorCard('images/5featuredoctor1.png'),
                              SizedBox(width: 15),
                              _buildFeatureDoctorCard('images/5featuredoctor2.png'),
                              SizedBox(width: 15),
                              _buildFeatureDoctorCard('images/5featuredoctor3.png'),
                              SizedBox(width: 15),
                              _buildFeatureDoctorCard('images/5featuredoctor4.png'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 60), // Untuk memberi ruang di bagian bawah agar semua konten dapat di-scroll
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
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
            _buildBottomNavBarItem('images/menuhomenew.png', () {}),
            _buildBottomNavBarItem('images/menulovenew.png', () {}),
            _buildBottomNavBarItem('images/menubook.png', () {}),
            _buildBottomNavBarItem('images/menuchat.png', () {}),
          ],
        ),
      ),
    );
  }

  Widget _buildDoctorCard(String imagePath) {
    return Container(
      width: 160,
      height: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildPopulerDoctorCard(String imagePath) {
    return Container(
      width: 250,
      height: 350,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildFeatureDoctorCard(String imagePath) {
    return Container(
      width: 125,
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildIconCard(String imagePath) {
    return Container(
      width: 112,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
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
