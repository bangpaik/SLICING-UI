import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slicing_ui/screen_pages/5home_screen.dart';

class OnBoarding3 extends StatelessWidget {
  const OnBoarding3({Key? key}) : super(key: key);

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
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              width: screenSize.width, // Mengatur lebar gambar
              height: screenSize.height,
              child: SafeArea(
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Image.asset(
                        'images/imageBg_169571.png',
                        fit: BoxFit.fill,
                      ),
                    ),

                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 0.0), // Atur padding horizontal di sini
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 410.0), // Tetapkan jarak top
                            child: Text(
                              'Easy Appointments',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(height: 10), // Tambahkan jarak antara kedua teks
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 0.0), // Sesuaikan padding horizontal di sini
                            child: Padding(
                              padding: EdgeInsets.only(right: 0), // Tetapkan jarak dari kanan
                              child: Text(
                                'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of it over 2000 years old.',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,

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
                                  MaterialPageRoute(builder: (context) => HomeScreen()),
                                );

                              },
                              child: Text("Get Started",
                                style: TextStyle(
                                    fontSize: 18
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color.fromRGBO(14, 190, 127, 1),
                                foregroundColor: Colors.white,
                                // Warna tqeks pada button
                                minimumSize: Size(350, 50),
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                  BorderRadius.circular(12), // Radius button
                                ),
                                elevation: 5,
                              ),
                            ),

                          ),
                          SizedBox(height: 10), // Tambahkan jarak antara kedua teks
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 0.0), // Sesuaikan padding horizontal di sini
                            child: Padding(
                              padding: EdgeInsets.only(right: 0), // Tetapkan jarak dari kanan
                              child: Text(
                                'skip',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,

                                ),
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
      ),
    );
  }
}
