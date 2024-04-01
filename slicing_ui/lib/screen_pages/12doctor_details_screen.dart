import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slicing_ui/screen_pages/13doctor_appointment_screen.dart';

class DoctorDetailsScreen extends StatelessWidget {
  const DoctorDetailsScreen({Key? key}) : super(key: key);

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
                            builder: (context) => DoctorAppointmentScreen(), // Navigasi ke FindDoctorsScreen
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
                      'Doctor Details',
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
                                    SizedBox(width: 5),
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
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment
                            .center, // Mengatur posisi button ke tengah
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              // Tambahkan logika untuk menekan tombol "Book Now" di sini
                            },
                            child: Text(
                              'Book Now',
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.white,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff0ebe7f),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              // Melebarkan tombol dengan menentukan minWidth
                              minimumSize: Size(150,
                                  40), // Sesuaikan dengan ukuran yang diinginkan
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: screenSize.height *
                    0.43, // Menempatkan di tengah-tengah tinggi layar
                left: 60,
                right: 60,
                child: Container(
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Container(
                          height: 64,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Stack(
                            children: [
                              Container(
                                width: 125,
                                height: 64,
                                decoration: BoxDecoration(
                                  color: const Color(0x1ecacaca),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              Positioned(
                                left: 24,
                                top: 35,
                                child: Text(
                                  'Runing',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: const Color(0xff677294),
                                    fontFamily: 'Rubik-Light',
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 29,
                                top: 10,
                                child: Text(
                                  '100',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: const Color(0xff333333),
                                    fontFamily: 'Rubik-Medium',
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Container(
                          height: 64,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Stack(
                            children: [
                              Container(
                                width: 125,
                                height: 64,
                                decoration: BoxDecoration(
                                  color: const Color(0x1ecacaca),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              Positioned(
                                left: 36,
                                top: 35,
                                child: Text(
                                  'Ongoing',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: const Color(0xff677294),
                                    fontFamily: 'Rubik-Light',
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 47,
                                top: 10,
                                child: Text(
                                  '500',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: const Color(0xff333333),
                                    fontFamily: 'Rubik-Medium',
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Container(
                          height: 64,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Stack(
                            children: [
                              Container(
                                width: 125,
                                height: 64,
                                decoration: BoxDecoration(
                                  color: const Color(0x1ecacaca),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              Positioned(
                                left: 30,
                                top: 33,
                                child: Text(
                                  'Patient',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: const Color(0xff677294),
                                    fontFamily: 'Rubik-Light',
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 39,
                                top: 10,
                                child: Text(
                                  '700',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: const Color(0xff333333),
                                    fontFamily: 'Rubik-Medium',
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: screenSize.height * 0.59, // Menempatkan di tengah-tengah tinggi layar
                left: 20,
                right: 20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Services',
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 18,
                        color: const Color(0xff333333),
                        fontFamily: 'Rubik-Medium',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      '1.   Patient care should be the number one priority.',
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 13,
                        color: const Color(0xe5677294),
                        fontFamily: 'Rubik-Light',
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      '2.   If you run your practice you know how frustrating.',
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 13,
                        color: const Color(0xe5677294),
                        fontFamily: 'Rubik-Light',
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      '3.   That’s why some of appointment reminder system.',
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 13,
                        color: const Color(0xe5677294),
                        fontFamily: 'Rubik-Light',
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: screenSize.height * 0.78, // Menempatkan di tengah-tengah tinggi layar
                left: 20,
                right: 20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: screenSize.width - 40, // Lebar layar dikurangi dengan margin kiri dan kanan
                      height: screenSize.height * 0.2, // Sesuaikan tinggi gambar sesuai kebutuhan
                      child: Image.asset(
                        'images/map.png',
                        fit: BoxFit.cover, // Untuk memastikan gambar mengisi container dengan baik
                      ),
                    ),
                  ],
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
}
