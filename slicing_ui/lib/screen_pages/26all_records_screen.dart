import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:slicing_ui/screen_pages/21menu_screen.dart';
import 'package:slicing_ui/screen_pages/22my_doctors_screen.dart';
import 'package:slicing_ui/screen_pages/24add_record_screen.dart';

class AllRecords extends StatelessWidget {
  const AllRecords({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              width: screenSize.width,
              height: screenSize.height * 1.2,
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
                          MaterialPageRoute(builder: (context) => MyDoctors()),
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
                      'All Record',
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
            Container(
              margin: EdgeInsets.only(top: 120),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    Container(
                      // width: MediaQuery.of(context).size.width - 2, // Menggunakan lebar layar dikurangi margin kiri dan kanan
                      padding: EdgeInsets.all(16), // Menambahkan padding ke dalam Container
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
                              Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                  height: 80,
                                  width: 80, // Lebar sesuaikan kebutuhan Anda
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(14, 190, 127, 1), // Warna box
                                    borderRadius: BorderRadius.circular(10), // Mengatur border radius
                                    // Anda bisa menambahkan dekorasi lain sesuai kebutuhan, seperti gradient atau bayangan
                                  ),
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Positioned(
                                        top: 20,
                                        child: Text(
                                          '27',
                                          style: TextStyle(
                                            color: Colors.white, // Warna teks
                                            fontSize: 16, // Ukuran teks
                                            fontWeight: FontWeight.bold, // Ketebalan teks
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        top: 40,
                                        child: Text(
                                          'FEB',
                                          style: TextStyle(
                                            color: Colors.white, // Warna teks
                                            fontSize: 16, // Ukuran teks
                                            fontWeight: FontWeight.bold, // Ketebalan teks
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),



                              SizedBox(width: 15), // Atur jarak antara elemen
                              Expanded(
                                flex: 2,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Records added by you',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(height:5),
                                    Text(
                                      'Record for Abdullah Mamun',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: const Color(0xff0ebe7f),
                                      ),
                                    ),
                                    SizedBox(height:5),
                                    Text(
                                      '1 Prescription ',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: const Color(0xff677294),
                                      ),
                                    ),
                                    // Atur jarak antara elemen

                                  ],
                                ),
                              ),
                              Positioned(
                                top: -3,
                                right: -3,
                                child: Icon(Icons.more_vert), // Icon titik tiga
                              ),
                            ],
                          ),
                          SizedBox(height: 5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 40,
                                width: 80,
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(14, 190, 127, 0.1), // Warna box
                                  borderRadius: BorderRadius.circular(5), // Mengatur border radius
                                  // Anda bisa menambahkan dekorasi lain sesuai kebutuhan, seperti gradient atau bayangan
                                ),
                                child: Center(
                                  child: Text(
                                    'NEW',
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: const Color(0xff0ebe7f),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),


                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: MediaQuery.of(context).size.width - 2, // Menggunakan lebar layar dikurangi margin kiri dan kanan
                      padding: EdgeInsets.all(16), // Menambahkan padding ke dalam Container
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
                              Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                  height: 80,
                                  width: 80, // Lebar sesuaikan kebutuhan Anda
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(14, 190, 127, 1), // Warna box
                                    borderRadius: BorderRadius.circular(10), // Mengatur border radius
                                    // Anda bisa menambahkan dekorasi lain sesuai kebutuhan, seperti gradient atau bayangan
                                  ),
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Positioned(
                                        top: 20,
                                        child: Text(
                                          '28',
                                          style: TextStyle(
                                            color: Colors.white, // Warna teks
                                            fontSize: 16, // Ukuran teks
                                            fontWeight: FontWeight.bold, // Ketebalan teks
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        top: 40,
                                        child: Text(
                                          'FEB',
                                          style: TextStyle(
                                            color: Colors.white, // Warna teks
                                            fontSize: 16, // Ukuran teks
                                            fontWeight: FontWeight.bold, // Ketebalan teks
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),



                              SizedBox(width: 15), // Atur jarak antara elemen
                              Expanded(
                                flex: 2,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Records added by you',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(height:5),
                                    Text(
                                      'Record for Abdullah Suvo',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: const Color(0xff0ebe7f),
                                      ),
                                    ),
                                    SizedBox(height:5),
                                    Text(
                                      '1 Prescription ',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: const Color(0xff677294),
                                      ),
                                    ),
                                    // Atur jarak antara elemen

                                  ],
                                ),
                              ),
                              Positioned(
                                top: -3,
                                right: -3,
                                child: Icon(Icons.more_vert), // Icon titik tiga
                              ),
                            ],
                          ),
                          SizedBox(height: 5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 40,
                                width: 80,
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(14, 190, 127, 0.1), // Warna box
                                  borderRadius: BorderRadius.circular(5), // Mengatur border radius
                                  // Anda bisa menambahkan dekorasi lain sesuai kebutuhan, seperti gradient atau bayangan
                                ),
                                child: Center(
                                  child: Text(
                                    'NEW',
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: const Color(0xff0ebe7f),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),


                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: MediaQuery.of(context).size.width - 2, // Menggunakan lebar layar dikurangi margin kiri dan kanan
                      padding: EdgeInsets.all(16), // Menambahkan padding ke dalam Container
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
                              Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                  height: 80,
                                  width: 80, // Lebar sesuaikan kebutuhan Anda
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(14, 190, 127, 1), // Warna box
                                    borderRadius: BorderRadius.circular(10), // Mengatur border radius
                                    // Anda bisa menambahkan dekorasi lain sesuai kebutuhan, seperti gradient atau bayangan
                                  ),
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Positioned(
                                        top: 20,
                                        child: Text(
                                          '01',
                                          style: TextStyle(
                                            color: Colors.white, // Warna teks
                                            fontSize: 16, // Ukuran teks
                                            fontWeight: FontWeight.bold, // Ketebalan teks
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        top: 40,
                                        child: Text(
                                          'MAR',
                                          style: TextStyle(
                                            color: Colors.white, // Warna teks
                                            fontSize: 16, // Ukuran teks
                                            fontWeight: FontWeight.bold, // Ketebalan teks
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),



                              SizedBox(width: 15), // Atur jarak antara elemen
                              Expanded(
                                flex: 2,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Records added by you',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(height:5),
                                    Text(
                                      'Record for Shruti Kedia',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: const Color(0xff0ebe7f),
                                      ),
                                    ),
                                    SizedBox(height:5),
                                    Text(
                                      '1 Prescription ',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: const Color(0xff677294),
                                      ),
                                    ),
                                    // Atur jarak antara elemen

                                  ],
                                ),
                              ),
                              Positioned(
                                top: -3,
                                right: -3,
                                child: Icon(Icons.more_vert), // Icon titik tiga
                              ),
                            ],
                          ),
                          SizedBox(height: 5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 40,
                                width: 80,
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(14, 190, 127, 0.1), // Warna box
                                  borderRadius: BorderRadius.circular(5), // Mengatur border radius
                                  // Anda bisa menambahkan dekorasi lain sesuai kebutuhan, seperti gradient atau bayangan
                                ),
                                child: Center(
                                  child: Text(
                                    'NEW',
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: const Color(0xff0ebe7f),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),


                        ],
                      ),
                    ),
                    SizedBox(height: 65),
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

          ],
        ),
      ),
    );
  }
}
