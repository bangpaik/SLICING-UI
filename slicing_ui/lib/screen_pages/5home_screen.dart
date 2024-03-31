import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        color: Colors.white,
        width: screenSize.width,
        height: screenSize.height,
        child: Stack(
          children: [
            Container(
              width: screenSize.width,
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
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Hi, Find Your Doctor',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage('images/5gravatar.png'), // Tambahkan gambar di sini
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 90,
              left: 20,
              right: 20,
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Row(
                  children: [
                    SizedBox(width: 8), // Menggeser ikon pencarian ke kanan
                    Icon(Icons.search),
                    SizedBox(width: 8), // Menggeser sedikit ikon pencarian dan teks input
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Search......',
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

            Positioned(
              left: 7,
              top: 40,
              child: Stack(
                children: [
                  Text(
                    'LIVE',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 7,
                      color: const Color(0xffffffff),
                      fontFamily: 'Rubik-Medium',
                      fontWeight: FontWeight.normal,
                    ),
                    maxLines: 9999,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Positioned(
                    left: 0,
                    top: 10,
                    child: Image.asset(
                      'images/livedoctors.png',
                      width: 5.6,
                      height: 5.6,
                    ),
                  ),
                ],
              ),
            ),
            Positioned.fill(
              bottom: 0,
              child: Image.asset(
                'images/bg.png',
                fit: BoxFit.fill,
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
                      Image.asset(
                        "images/battery.png",
                        width: 20,
                        color: Colors.white,
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
          ],
        ),
      ),
    );
  }
}
