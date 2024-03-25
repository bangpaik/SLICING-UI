import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:slicing_ui/screen_pages/21menu_screen.dart';
import 'package:slicing_ui/screen_pages/24add_record_screen.dart';

class MedicalRecordsScreen02 extends StatelessWidget {
  const MedicalRecordsScreen02({Key? key}) : super(key: key);

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
                    // Tambahkan widget untuk bar sinyal di sini
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
                        MaterialPageRoute(builder: (context) => AddRecord()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white, // Hapus latar belakang khusus dari tombol
                      minimumSize: Size( 0, 40),
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
                        color: Colors.grey.withOpacity(0.5),
                      ),
                    ),
                  ),


                  SizedBox(width: 15), // Jarak antara ikon dan teks
                  Text(
                    'Medical Records',
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
            top: 0,
            left: 0,
            right: 0,
            height: screenSize.height * 1.0,
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('images/illustration.png',

                    ),
                    SizedBox(height: 25),
                    Text(
                      'Add Medical Record', // Contoh waktu
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 60.0),
                        child: Text(
                          'A detailed health history helps a doctor diagnose you better.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 25),
                    ElevatedButton(
                      onPressed: () {

                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => AddRecord()),
                        );
                      },
                      child: Text("Add a record",
                        style: TextStyle(
                            fontSize: 18
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromRGBO(14, 190, 127, 1),
                        foregroundColor: Colors.white,
                        minimumSize: Size(350, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius:
                          BorderRadius.circular(12), // Radius button
                        ),
                        elevation: 5,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            width: screenSize.width,
            height: screenSize.height,
            color: Colors.black.withOpacity(0.6), // Black with 60% opacity
          ),
          Positioned(
            bottom: -5,
            left: 0,
            right: 0,
            child: SafeArea(
              child: Container(
                padding: const EdgeInsets.only(top: 5, right: 14, left: 14),
                height: screenSize.height * 0.3,
                alignment: Alignment.bottomCenter,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        margin: const EdgeInsets.only(top: 10),
                        width: 100,
                        height: 3,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(196, 196, 196, 1),
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                    ),

                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 0.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 25.0),
                            child: Text(
                              'Add a record',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 0.0),
                            child: Padding(
                              padding: EdgeInsets.only(right: 140),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.camera_alt,
                                      size: 18,
                                          color: Color.fromRGBO(103, 114, 148, 1)
                                      ),
                                      SizedBox(width: 10),
                                      Text('Take a photo',
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color.fromRGBO(103, 114, 148, 1)
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 14), // Memberikan jarak antara ikon dan teks berikutnya
                                  Row(
                                    children: [
                                      Icon(Icons.photo,
                                      size: 18,
                                          color: Color.fromRGBO(103, 114, 148, 1)
                                      ),
                                      SizedBox(width: 10),
                                      Text('Upload from gallery',
                                      style: TextStyle(
                                        fontSize: 14,
                                          color: Color.fromRGBO(103, 114, 148, 1)
                                      ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 14), // Memberikan jarak antara ikon dan teks berikutnya
                                  Row(
                                    children: [
                                      SizedBox(width: 3),
                                      Image.asset('images/up_files.png'),
                                      SizedBox(width: 11),
                                      Text('Upload files',
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color.fromRGBO(103, 114, 148, 1)
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),


                        ],
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
}
