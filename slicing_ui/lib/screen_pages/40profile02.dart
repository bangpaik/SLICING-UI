import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slicing_ui/screen_pages/21menu_screen.dart';
import  'package:keyboard_actions/keyboard_actions.dart';
import 'package:slicing_ui/screen_pages/39profile01.dart';

class Profile02 extends StatelessWidget {
  const Profile02({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    DateTime _selectedDate;
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        clipBehavior: Clip.none,
        child: Stack(
          children: [
            Container(
              width: screenSize.width,
              height: screenSize.height , // Ubah tinggi sesuai kebutuhan
              decoration: BoxDecoration(
               color: Color.fromRGBO(85, 99, 134, 1)

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
                          color: Colors.white,
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
                        color: Colors.white,
                        size: 14,
                      ),
                      SizedBox(width: 5),
                      Icon(
                        Icons.signal_wifi_4_bar,
                        color: Colors.white,
                        size: 14,
                      ),
                      SizedBox(width: 5),
                      // Tambahkan widget untuk baterai di sini
                      Image.asset(
                        "images/bw.png",
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
                          MaterialPageRoute(builder: (context) => Profile01()),
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
                      'Profile',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 210,
              left: 0,
              right: 0,
              height: screenSize.height,
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column( // Mengubah Row menjadi Column untuk menambahkan TextField di bawah teks
                    crossAxisAlignment: CrossAxisAlignment.start, // Menjadikan teks dan input field berada di sebelah kiri
                    children: [
                      Text(
                        'What is your name?', // Contoh teks
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                        ),
                      ),
                      SizedBox(height: 8), // Spasi antara teks dan input field
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Abdullah Mamun', // Pesan placeholder untuk input field
                      hintStyle: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
                      enabledBorder: UnderlineInputBorder( // Mengatur garis bawah
                        borderSide: BorderSide(color: Colors.white), // Warna garis bawah
                      ),
                      focusedBorder: UnderlineInputBorder( // Mengatur garis bawah saat input field fokus
                        borderSide: BorderSide(color: Colors.white), // Warna garis bawah saat input field fokus
                      ),
                    ),
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                    ],
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
