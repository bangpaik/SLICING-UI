import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginScreen04 extends StatelessWidget {
  const LoginScreen04({Key? key}) : super(key: key);

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
                colorFilter: ColorFilter.mode(
                  Colors.grey.withOpacity(0.5),
                  BlendMode.saturation,
                ),
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
            height: screenSize.height * 0.6,
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Welcome Back', // Contoh waktu
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
                        child: Text(
                          'You can search course, apply course and find scholarship for abroad studies',
                          textAlign: TextAlign.center,
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //
                        Container(
                          decoration: BoxDecoration(
                            color: CupertinoColors.systemGrey3,
                            borderRadius: BorderRadius.circular(5),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black54,
                                offset: Offset(0, 0),
                                blurRadius: 2,
                              ),
                            ],
                          ),
                          constraints: BoxConstraints(minWidth: 160, minHeight: 50),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Image.asset(
                                  'images/google.png',
                                  height: 25,

                                ),
                                SizedBox(width: 8),
                                Text('Google'),
                              ],
                            ),
                          ),
                        ),

                        SizedBox(width: 10),
                        Container(
                          decoration: BoxDecoration(
                            color: CupertinoColors.systemGrey3,

                            borderRadius: BorderRadius.circular(5),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black54,
                                offset: Offset(0, 0),
                                blurRadius: 2,
                              ),
                            ],

                          ),
                          constraints: BoxConstraints(minWidth: 160, minHeight: 50),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Image.asset(
                                  'images/fb.png', // Path untuk logo Google
                                  height: 35, // Ukuran logo

                                ),
                                SizedBox(width: 8),
                                Text('Facebook'),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 25),
                    TextField(
                      enabled: false,
                      decoration: InputDecoration(
                        hintText: 'itsmemamun1@gmail.com',
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
                        suffixIcon: IconButton(
                          icon: Icon(
                            Icons.check,
                            color: Colors.grey,
                          ),
                          onPressed: () {
                            // Tambahkan logika untuk mengubah visibilitas password
                          },
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      enabled: false,
                      decoration: InputDecoration(
                        hintText: '••••••••',
                        labelStyle: TextStyle(fontSize: 24.0),
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
            height: screenSize.height * 1.7,
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(width: 10),
                        ElevatedButton(
                          onPressed: () {
                          },
                          child: Text("Login",
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
                    SizedBox(height: 15),
                    RichText(
                      text: TextSpan(
                        text: "Fogot password ",
                        style: TextStyle(
                            color: Color.fromRGBO(14, 190, 127, 1)
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: -2,
            left: 0,
            right: 0,
            child: SafeArea(
              child: Container(
                padding: const EdgeInsets.only(top: 5, right: 14, left: 14),
                height: screenSize.height * 0.5,
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
                              'Reset Password',
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
                              child: Text(
                                'Set the new password for your account so you can login and access all the features.',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 10), //
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'New Password',
                        labelStyle: TextStyle(fontSize: 12.0),
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
                    ),
                    SizedBox(height: 10),
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Re-enter Password',
                        labelStyle: TextStyle(fontSize: 12.0),
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 25.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide: BorderSide(
                              color: Colors
                                  .grey),
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(
                            Icons.visibility_off,
                            color: Colors.grey,
                          ),
                          onPressed: () {
                          },
                        ),
                      ),
                      obscureText: true,
                    ),

                    SizedBox(height: 15),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                        },
                        child: Text("Continue",
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
