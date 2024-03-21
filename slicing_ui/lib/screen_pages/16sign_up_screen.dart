import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

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
                // Ganti dengan path gambar Anda
                fit: BoxFit.fill, // Sesuaikan dengan kebutuhan Anda
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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

                    // Icons.battery_90,
                    // color: Colors.black,
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: screenSize.height * 0.4,
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Join us to start searching', // Contoh waktu
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 15),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 60.0),
                        // Penambahan padding
                        child: Text(
                          'You can search course, apply course and find scholarship for abroad studies',
                          // Contoh waktu
                          textAlign: TextAlign.center,
                          // Untuk membuat teks menjadi rata tengah
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: screenSize.height * 1.1,
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Spasi antara teks dan tombol
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            // Handle action
                          },
                          child: Row(
                            children: [
                              Image.asset(
                                'images/google.png', // Path untuk logo Google
                                height: 25, // Ukuran logo
                              ),
                              SizedBox(width: 8),
                              Text('Google'),
                            ],
                          ),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: CupertinoColors.white,
                              foregroundColor: Colors.black54,
                              minimumSize: Size(160, 50),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              elevation: 5),
                        ),
                        SizedBox(width: 10), // Spasi antara tombol
                        ElevatedButton(
                          onPressed: () {
                            // Action for Google Button
                          },
                          child: Row(
                            children: [
                              Image.asset(
                                'images/fb.png', // Path untuk logo Google
                                height: 25, // Ukuran logo
                              ),
                              SizedBox(width: 8),
                              Text('Facebook'),
                            ],
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.black54,
                            // Warna teks pada button
                            minimumSize: Size(150, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(5), // Radius button
                            ),
                            elevation: 5,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 25), // Spasi antara tombol dan bidang teks
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Name',
                        labelStyle: TextStyle(fontSize: 13.0),
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 25.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          // Menambahkan radius outline
                          borderSide: BorderSide(
                              color: Colors
                                  .grey), // Mengubah warna outline menjadi lebih pudar
                        ),
                      ),
                    ),
                    SizedBox(height: 10), // Spasi antara bidang teks
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Email',
                        labelStyle: TextStyle(fontSize: 13.0),
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 25.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          // Menambahkan radius outline
                          borderSide: BorderSide(
                              color: Colors
                                  .grey), // Mengubah warna outline menjadi lebih pudar
                        ),
                      ),
                    ),
                    SizedBox(height: 10), // Spasi antara bidang teks
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Password',
                        labelStyle: TextStyle(fontSize: 13.0),
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 25.0),
                        // Mengatur padding konten input
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          // Menambahkan radius outline
                          borderSide: BorderSide(
                              color: Colors
                                  .grey), // Mengubah warna outline menjadi lebih pudar
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(
                            Icons.visibility_off,
                            color: Colors.grey,
                          ),
                          onPressed: () {
                            // Tambahkan logika untuk mengubah visibilitas password
                          },
                        ),
                      ),
                      obscureText: true,
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: -25,
            left: 0,
            right: 0,
            height: screenSize.height * 1.6,
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Spasi antara teks dan tombol
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 15, // Lebar lingkaran
                          height: 15, // Tinggi lingkaran
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey, // Warna lingkaran
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          "I agree with the Terms of Service & Privacy Policy",
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                        SizedBox(width: 8), // Jarak antara teks dan lingkaran
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: -25,
            left: 0,
            right: 0,
            height: screenSize.height * 1.9,
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Spasi antara teks dan tombol
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(width: 10),
                        // Jarak antara lingkaran dan tombol SignUp
                        ElevatedButton(
                          onPressed: () {
                            // Tambahkan fungsi untuk tombol SignUp
                          },
                          child: Text("Sign Up",
                            style: TextStyle(
                              fontSize: 18
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromRGBO(14, 190, 127, 1),
                            foregroundColor: Colors.white,
                            // Warna teks pada button
                            minimumSize: Size(350, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(12), // Radius button
                            ),
                            elevation: 5,
                          ),
                        ),
                      ], // Jarak antara teks dan lingkaran
                    ),
                    SizedBox(height: 15),
                    RichText(
                      text: TextSpan(
                          text: "Have an account? ",
                          style: TextStyle(
                              color: Color.fromRGBO(14, 190, 127, 1)
                          ),
                          children: [
                            TextSpan(
                                text: 'Log in',
                                // recognizer: TapGestureRecognizer()
                                //   ..onTap = (){
                                //     Navigator.push(context, MaterialPageRoute(builder: (context)
                                //     => PageLogin()
                                //     ));
                                //   },
                                style: TextStyle(
                                    color: Color.fromRGBO(14, 190, 127, 1)
                                )
                            )
                          ]
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
