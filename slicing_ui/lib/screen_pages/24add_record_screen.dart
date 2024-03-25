import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:slicing_ui/screen_pages/21menu_screen.dart';
import 'package:slicing_ui/screen_pages/23medical_records_screen01.dart';
import 'package:slicing_ui/screen_pages/25medical_record_screen02.dart';

class AddRecord extends StatelessWidget {
  const AddRecord({Key? key}) : super(key: key);

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
                        MaterialPageRoute(builder: (context) => MedicalRecordsScreen01()),
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
                        color: Color.fromRGBO(103, 114, 148, 1),
                      ),
                    ),
                  ),


                  SizedBox(width: 15), // Jarak antara ikon dan teks
                  Text(
                    'Add Records',
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
            height: screenSize.height * 0.5,
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // Gambar
                    Image.asset('images/img_record.png',
                    width: 80,
                    ),
                    SizedBox(width: 15),
                    Container(
                      width: 80, // Sesuaikan lebar sesuai kebutuhan
                      height: 100, // Sesuaikan tinggi sesuai kebutuhan
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(14, 190, 127,0.2 ), // Sesuaikan warna sesuai kebutuhan
                        borderRadius: BorderRadius.circular(6), // Sesuaikan border radius sesuai kebutuhan
                      ),

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                         Icon(Icons.add,
                         size: 25,
                             color: Color.fromRGBO(14, 190, 127, 1 ),

                         ),
                          Text(
                            "Add more images",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color.fromRGBO(14, 190, 127, 1 ),
                              fontWeight: FontWeight.bold

                            ),
                            // Posisi teks diatur menjadi tengah
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: -4,
            left: 0,
            right: 0,
            height: 350,
            child: SafeArea(
              child: Container(
                padding: const EdgeInsets.only(top: 5, right: 14, left: 14),
                height: screenSize.height * 0.6,
                alignment: Alignment.bottomCenter,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),

                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black54,
                      offset: Offset(0, 3),
                      blurRadius: 5,
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [


                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 0.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 25.0),
                            child: Row( // Menggunakan Row untuk ikon dan teks "Record for"
                              children: [
                                Expanded(
                                  child: Text(
                                    'Record for',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Icon(
                                  Icons.edit,
                                  size: 13,
                                  color: Colors.grey,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height:10),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 0.0),
                            child: Padding(
                              padding: EdgeInsets.only(right: 140),
                              child: Text(
                                'Abdullah Mamun',
                                style: TextStyle(
                                  color: Color.fromRGBO(14, 190, 127, 1 ),
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.only(top: 15), // Mengatur jarak antara teks dan garis
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.grey, // Warna garis
                            width: 0.5, // Lebar garis
                          ),
                        ),
                      ),
                    ),


                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Row( // Menggunakan Row untuk ikon dan teks "Record for"
                        children: [
                          Expanded(
                            child: Text(
                              'Type of Record',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                    SizedBox(height: 15),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 0.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start, // Ikon akan sejajar ke kanan
                        children: [

                          Column(
                            children: [
                              SizedBox(width: 25),
                              Image.asset('images/rp.png'),
                              Text(
                                'Report', // Teks yang ingin Anda tambahkan
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 75), // Memberikan jarak antara ikon dan teks
                          Column(
                            children: [
                             Image.asset('images/pr.png'),
                              Text(
                                'Prescription', // Teks yang ingin Anda tambahkan
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 75), // Memberikan jarak antara ikon dan teks
                          Column(
                            children: [
                              Image.asset('images/in.png'),
                              SizedBox(width: 5),
                              Text(
                                'Invoice', // Teks yang ingin Anda tambahkan
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 15), // Mengatur jarak antara teks dan garis
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.grey, // Warna garis
                            width: 0.5, // Lebar garis
                          ),
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
                            padding: const EdgeInsets.only(top: 15.0),
                            child: Row( // Menggunakan Row untuk ikon dan teks "Record for"
                              children: [
                                Expanded(
                                  child: Text(
                                    'Record created on',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Icon(
                                  Icons.edit,
                                  size: 13,
                                  color: Colors.grey,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height:10),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 0.0),
                            child: Padding(
                              padding: EdgeInsets.only(right: 140),
                              child: Text(
                                '27 Feb, 2021',
                                style: TextStyle(
                                  color: Color.fromRGBO(14, 190, 127, 1 ),
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 15), // Mengatur jarak antara teks dan garis
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.grey, // Warna garis
                            width: 0.5, // Lebar garis
                          ),
                        ),
                      ),
                    ),



                    SizedBox(height: 15),



                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MedicalRecordsScreen02()),
                          );
                        },
                        child: Text("Upload Record",
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
                    )
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
