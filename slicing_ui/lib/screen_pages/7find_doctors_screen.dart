import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slicing_ui/screen_pages/8doctor_selecttime_screen.dart';

class FindDoctorsScreen extends StatelessWidget {
  const FindDoctorsScreen({Key? key}) : super(key: key);

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
                            builder: (context) => DoctorSelectTimeScreen(), // Navigasi ke FindDoctorsScreen
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
                      'Find Doctors',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),

              Positioned(
                left: 16,
                top: 80,
                right: 16,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 3,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.search),
                      SizedBox(width: 8),
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Dentist',
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
                top: 150, // Atur posisi elemen berikut
                left: 16,
                right: 16, // Mengatur kanan ke 16 piksel dari tepi

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width -
                          32, // Menggunakan lebar layar dikurangi margin kiri dan kanan
                      padding: EdgeInsets.all(
                          16), // Menambahkan padding ke dalam Container
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
                                  'images/finddoctor1.png',
                                  height:
                                      120, // Menyesuaikan tinggi gambar dengan konten
                                  fit: BoxFit
                                      .contain, // Menyesuaikan gambar agar sesuai dalam kotak
                                ),
                              ),
                              SizedBox(width: 10), // Atur jarak antara elemen
                              Expanded(
                                flex: 2,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Dr. Shruti Kedia',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                        height: 5), // Atur jarak antara elemen
                                    Text(
                                      'Tooths Dentist',
                                      style: TextStyle(
                                        fontSize: 13,
                                        color: const Color(0xff0ebe7f),
                                      ),
                                    ),
                                    Text(
                                      '7 Years experience ',
                                      style: TextStyle(
                                        fontSize: 13,
                                        color: const Color(0xff677294),
                                      ),
                                    ),
                                    SizedBox(
                                        height: 10), // Atur jarak antara elemen
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.circle,
                                          color: const Color(0xff0ebe7f),
                                          size: 16,
                                        ),
                                        Text(
                                          '87 %',
                                          style: TextStyle(
                                            fontSize: 13,
                                            color: const Color(0xff677294),
                                          ),
                                        ),
                                        Icon(
                                          Icons.circle,
                                          color: const Color(0xff0ebe7f),
                                          size: 16,
                                        ),
                                        Text(
                                          '69 Patient Stories',
                                          style: TextStyle(
                                            fontSize: 13,
                                            color: const Color(0xff677294),
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                top: -3,
                                right: -3,
                                child: Image.asset(
                                  'images/love.png',
                                  width: 20,
                                  height: 20,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Next Available',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: const Color(0xff0ebe7f),
                                ),
                              ),
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
                                ),
                              ),
                            ],
                          ),
                          Text(
                            '10:00 AM tomorrow',
                            style: TextStyle(
                              fontSize: 13,
                              color: const Color(0xff677294),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 10), // Atur jarak antara elemen

              // Kedua
              Positioned(
                top: 370, // Atur posisi elemen berikut
                left: 16,
                right: 16, // Mengatur kanan ke 16 piksel dari tepi

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width -
                          32, // Menggunakan lebar layar dikurangi margin kiri dan kanan
                      padding: EdgeInsets.all(
                          16), // Menambahkan padding ke dalam Container
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
                                  'images/finddoctor2.png',
                                  height:
                                      120, // Menyesuaikan tinggi gambar dengan konten
                                  fit: BoxFit
                                      .contain, // Menyesuaikan gambar agar sesuai dalam kotak
                                ),
                              ),
                              SizedBox(width: 10), // Atur jarak antara elemen
                              Expanded(
                                flex: 2,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Dr. Watamaniuk',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                        height: 5), // Atur jarak antara elemen
                                    Text(
                                      'Tooths Dentist',
                                      style: TextStyle(
                                        fontSize: 13,
                                        color: const Color(0xff0ebe7f),
                                      ),
                                    ),
                                    Text(
                                      '9 Years experience ',
                                      style: TextStyle(
                                        fontSize: 13,
                                        color: const Color(0xff677294),
                                      ),
                                    ),
                                    SizedBox(
                                        height: 10), // Atur jarak antara elemen
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.circle,
                                          color: const Color(0xff0ebe7f),
                                          size: 16,
                                        ),
                                        Text(
                                          '74 %',
                                          style: TextStyle(
                                            fontSize: 13,
                                            color: const Color(0xff677294),
                                          ),
                                        ),
                                        Icon(
                                          Icons.circle,
                                          color: const Color(0xff0ebe7f),
                                          size: 16,
                                        ),
                                        Text(
                                          '78 Patient Stories',
                                          style: TextStyle(
                                            fontSize: 13,
                                            color: const Color(0xff677294),
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                top: -3,
                                right: -3,
                                child:
                                Image.asset(
                                  'images/likelove.png',
                                  width: 20,
                                  height: 20,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Next Available',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: const Color(0xff0ebe7f),
                                ),
                              ),
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
                                ),
                              ),
                            ],
                          ),
                          Text(
                            '12:00 AM tomorrow',
                            style: TextStyle(
                              fontSize: 13,
                              color: const Color(0xff677294),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 10), // Atur jarak antara elemen

              // Ketiga
              Positioned(
                top: 590, // Atur posisi elemen berikut
                left: 16,
                right: 16, // Mengatur kanan ke 16 piksel dari tepi

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width -
                          32, // Menggunakan lebar layar dikurangi margin kiri dan kanan
                      padding: EdgeInsets.all(
                          16), // Menambahkan padding ke dalam Container
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
                                  'images/finddoctor3.png',
                                  height:
                                      120, // Menyesuaikan tinggi gambar dengan konten
                                  fit: BoxFit
                                      .contain, // Menyesuaikan gambar agar sesuai dalam kotak
                                ),
                              ),
                              SizedBox(width: 10), // Atur jarak antara elemen
                              Expanded(
                                flex: 2,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Dr. Crownover',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                        height: 5), // Atur jarak antara elemen
                                    Text(
                                      'Tooths Dentist',
                                      style: TextStyle(
                                        fontSize: 13,
                                        color: const Color(0xff0ebe7f),
                                      ),
                                    ),
                                    Text(
                                      '5 Years experience ',
                                      style: TextStyle(
                                        fontSize: 13,
                                        color: const Color(0xff677294),
                                      ),
                                    ),
                                    SizedBox(
                                        height: 10), // Atur jarak antara elemen
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.circle,
                                          color: const Color(0xff0ebe7f),
                                          size: 16,
                                        ),
                                        Text(
                                          '59 %',
                                          style: TextStyle(
                                            fontSize: 13,
                                            color: const Color(0xff677294),
                                          ),
                                        ),
                                        Icon(
                                          Icons.circle,
                                          color: const Color(0xff0ebe7f),
                                          size: 16,
                                        ),
                                        Text(
                                          '86 Patient Stories',
                                          style: TextStyle(
                                            fontSize: 13,
                                            color: const Color(0xff677294),
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                top: -3,
                                right: -3,
                                child: Image.asset(
                                  'images/love.png',
                                  width: 20,
                                  height: 20,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Next Available',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: const Color(0xff0ebe7f),
                                ),
                              ),
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
                                ),
                              ),
                            ],
                          ),
                          Text(
                            '11:00 AM tomorrow',
                            style: TextStyle(
                              fontSize: 13,
                              color: const Color(0xff677294),
                            ),
                          ),
                        ],
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
