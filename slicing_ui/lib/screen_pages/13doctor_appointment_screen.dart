import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slicing_ui/screen_pages/14doctor_appointment_screen2.dart';

class DoctorAppointmentScreen extends StatelessWidget {
  const DoctorAppointmentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
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
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                left: 16,
                top: 45,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => DoctorAppointmentScreenDua(), // Navigasi ke FindDoctorsScreen
                          ),
                        );
                      },
                      child: Image.asset(
                        'images/tombol_back.png',
                        width: 24,
                        height: 24,
                      ),
                    ),
                    SizedBox(width: 8),
                    Text(
                      'Appointment',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 100,
                left: 16,
                right: 16,
                child: Container(
                  width: screenSize.width - 32,
                  padding: EdgeInsets.all(16),
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
                          Expanded(
                            child: Image.asset(
                              'images/category1.png',
                              height: 90,
                              fit: BoxFit.contain,
                            ),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            flex: 2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Dr. Pediatrician',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  'Specialist Cardiologist ',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: const Color(0xff677294),
                                  ),
                                ),
                                SizedBox(height: 5),
                                Row(
                                  children: [
                                    Image.asset(
                                      'images/star.png',
                                    ),
                                    SizedBox(width: 130),
                                    Text(
                                      '28.00/hr',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: const Color(0xff677294),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Image.asset(
                            'images/love.png',
                            width: 20,
                            height: 20,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: screenSize.height *
                    0.29, // Menempatkan di tengah-tengah tinggi layar
                left: 20,
                right: 20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Appointment For',
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 18,
                        color: const Color(0xff333333),
                        fontFamily: 'Rubik-Medium',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Patient Name',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 10),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Contact Number',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: screenSize.height *
                    0.52, // Menempatkan di tengah-tengah tinggi layar
                left: 20,
                right: 20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Who is this patient?',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 16,
                        color: const Color(0xff333333),
                        fontFamily: 'Rubik-Medium',
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 9999,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 100,
                          height: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                  color: const Color(0x330ebe7f),
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: Center(
                                  child: Text(
                                    '+',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontSize: 50,
                                      color: const Color(0xff0ebe7f),
                                      fontFamily: 'Rubik-Light',
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 5), // Jarak antara gambar dan teks
                              Text(
                                'Add',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontSize: 14,
                                  color: const Color(0xff677294),
                                  fontFamily: 'Rubik-Regular',
                                  fontWeight: FontWeight.normal,
                                ),
                                maxLines: 1, // Sesuaikan dengan kebutuhan Anda
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),

                        Container(
                          width: 100,
                          height: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'images/myself.png',
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(height: 5), // Jarak antara gambar dan teks
                              Text(
                                'My Self',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontSize: 14,
                                  color: const Color(0xff677294),
                                  fontFamily: 'Rubik-Regular',
                                  fontWeight: FontWeight.normal,
                                ),
                                maxLines: 1, // Sesuaikan dengan kebutuhan Anda
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),

                        Container(
                          width: 100,
                          height: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'images/mychild.png',
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(height: 5), // Jarak antara gambar dan teks
                              Text(
                                'My Child',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontSize: 14,
                                  color: const Color(0xff677294),
                                  fontFamily: 'Rubik-Regular',
                                  fontWeight: FontWeight.normal,
                                ),
                                maxLines: 1, // Sesuaikan dengan kebutuhan Anda
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 100,
                          height: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'images/mywife.png',
                                width: 40,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(height: 5), // Jarak antara gambar dan teks
                              Text(
                                'My Wife',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontSize: 14,
                                  color: const Color(0xff677294),
                                  fontFamily: 'Rubik-Regular',
                                  fontWeight: FontWeight.normal,
                                ),
                                maxLines: 1, // Sesuaikan dengan kebutuhan Anda
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10), // Tambahkan jarak vertikal antara elemen-elemen di atas
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            // Tambahkan logika untuk menekan tombol "Book Now" di sini
                          },
                          child: Text(
                            'Next',
                            style: TextStyle(
                              fontSize: 45,
                              color: Colors.white,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff0ebe7f),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            minimumSize: Size(450, 80),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),



              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: Container(
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
                          color: Colors.black,
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
      ),
    );
  }

  Widget _buildDoctorCard(
    String doctorName,
    String doctorSpecialization,
    String imagePath,
    String likeImagePath,
  ) {
    return Stack(
      children: [
        Container(
          width: 160,
          height: 180,
          decoration: BoxDecoration(
            color: const Color(0xffffffff),
            borderRadius: BorderRadius.circular(6),
            boxShadow: const [
              BoxShadow(
                color: const Color(0x0f000000),
                offset: Offset(0, -1),
                blurRadius: 20,
              ),
            ],
          ),
        ),
        Positioned(
          left: 35,
          width: 90,
          top: 25,
          height: 131,
          child: Stack(
            children: [
              Positioned(
                left: 0,
                width: 90,
                top: 95,
                height: 36,
                child: Stack(
                  children: [
                    Positioned(
                      left: 8,
                      top: 0,
                      child: Text(
                        doctorName,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 15,
                          color: const Color(0xff333333),
                          fontFamily: 'Rubik-Medium',
                          fontWeight: FontWeight.normal,
                        ),
                        maxLines: 9999,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Positioned(
                      left: 0,
                      top: 22,
                      child: Text(
                        doctorSpecialization,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 12,
                          color: const Color(0xff0ebe7e),
                          fontFamily: 'Rubik-Regular',
                          fontWeight: FontWeight.normal,
                        ),
                        maxLines: 9999,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 3,
                width: 84,
                top: 0,
                height: 84,
                child: Image.asset(
                  imagePath,
                  width: 84,
                  height: 84,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          left: 133.117,
          width: 16.765,
          top: 10,
          height: 15,
          child: Image.asset(
            likeImagePath,
            width: 16.765,
            height: 15,
          ),
        ),
      ],
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
