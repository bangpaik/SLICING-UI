import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slicing_ui/screen_pages/21menu_screen.dart';

class DoctorsScreen extends StatelessWidget {
  final List<String> specialties = [
    'All',
    'Dentist',
    'Cardiology',
    'Pyshio Teraphy',

  ];

  final List<Map<String, dynamic>> doctorsData = [
    {
      'imagePath': 'images/d1.png',
      'name': 'Dr. Pediatrician',
      'specialization': 'Upasana Dental Clinic, Salt Care',
      'rating': '2.8 ( 2821 views )',
    },
    {
      'imagePath': 'images/d2.png',
      'name': 'Dr. Johan smith',
      'specialization': 'Specialist cardiologist',
      'rating': '2.8 ( 2821 views )',
    },
    {
      'imagePath': 'images/d3.png',
      'name': 'Dr. Mistry Brick',
      'specialization': 'Specialist Dentist',
      'rating': '2.8 ( 2821 views )',
    },
    {
      'imagePath': 'images/d4.png',
      'name': 'Dr. Ether Wall',
      'specialization': 'Specialist Cancer',
      'rating': '2.8 ( 2821 views )',
    },
  ];

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
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
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // Tambahkan widget untuk waktu di sini
                    Text(
                      '9:41', // Contoh waktu
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
                    // Tambahkan widget untuk bar sinyal di sini
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
                    // Tambahkan widget untuk baterai di sini
                    Image.asset(
                      "images/battery.png",
                      width: 20,
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 40,
            left: 5,
            right: 0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10), // Padding dalam kotak
              child: Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MenuScreen()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white, // Hapus latar belakang khusus dari tombol
                      minimumSize: Size(0, 40),
                      padding: EdgeInsets.zero, // Hapus padding tambahan
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10), // Radius button
                      ),
                    ),
                    child: Container(
                      padding: EdgeInsets.all(8.0), // Padding untuk ikon di dalam kontainer
                      child: Icon(
                        Icons.arrow_back_ios_new,
                        size: 16, // Ubah ukuran ikon di sini
                        color: Color.fromRGBO(103, 114, 148, 1),
                      ),
                    ),
                  ),
                  SizedBox(width: 15), // Jarak antara ikon dan teks
                  Text(
                    'Doctors',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 70,
            left: 20,
            right: 20,
            bottom: 0,
            child: Column(
              children: <Widget>[
                SizedBox(height: 10),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Search',
                      border: InputBorder.none,
                      icon: Icon(Icons.search),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: specialties.map((specialty) {
                      return _buildSpecialtyButton(specialty);
                    }).toList(),
                  ),
                ),
                SizedBox(height: 20),
                Expanded(
                  child: ListView(
                    children: doctorsData.map((doctor) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: _buildDoctorCard(doctor),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 60,
        decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30))),
        child: Row(
          children: <Widget>[
            Expanded(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.home,
                        color: const Color.fromRGBO(76, 175, 80, 1),
                      ),
                    ],
                  ),
                )),
            Expanded(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.favorite,
                        color: Color.fromRGBO(103, 114, 148, 1),
                      ),
                    ],
                  ),
                )),
            Expanded(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.book,
                        color: Color.fromRGBO(103, 114, 148, 1),
                      ),
                    ],
                  ),
                )),
            Expanded(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.chat,
                        color: Color.fromRGBO(103, 114, 148, 1),
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }



  Widget _buildSpecialtyButton(String specialty) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          margin: EdgeInsets.only(left: 5),
          decoration: BoxDecoration(
            color: specialty == 'All'
                ? Color.fromRGBO(14, 190, 127, 1)
                : Color.fromRGBO(14, 190, 127, 0.08),
            borderRadius: BorderRadius.circular(5),
          ),
          padding: EdgeInsets.all(10),
          child: Text(
            specialty,
            style: TextStyle(
              fontSize: 14,

              color: specialty == 'All'
                  ? Color.fromRGBO(249, 250, 251, 1)
                  : Color.fromRGBO(14, 190, 127, 1),
            ),
          ),
        ),
        SizedBox(width: 10),
      ],
    );
  }

  Widget _buildDoctorCard(Map<String, dynamic> doctorData) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0), // Menambahkan padding horizontal
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max, // Menambahkan pengaturan horizontal
              children: [
                Image.asset(
                  doctorData['imagePath'],
                  height: 100,
                  width: 100,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10),
                    Text(
                      doctorData['name'],
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(doctorData['specialization'],
                    style: TextStyle(
                      fontSize: 12
                    ),
                    ),
                    SizedBox(height: 10),
                    Image.asset(
                      'images/star.png',
                      scale: 1,
                    )
                  ],
                ),
              ],
            ),
          ),

          SizedBox(height: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Icon(
                    CupertinoIcons.heart_fill,
                    color: Colors.red,
                  ),
                ],
              ),
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    doctorData['rating'],
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Rubik',
                      color: Color.fromRGBO(103, 114, 148, 1),
                    ),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}