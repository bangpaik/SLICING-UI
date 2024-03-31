import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile01 extends StatelessWidget {
  const Profile01({Key? key}) : super(key: key);


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
              height: screenSize.height * 1.3, // Ubah tinggi sesuai kebutuhan
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/bg.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              height: 280,
              child: SafeArea(
                child: Container(
                  padding: const EdgeInsets.only(top: 5, right: 14, left: 14),
                  height: 280, // Sesuaikan tinggi container dengan kontennya
                  alignment: Alignment.topCenter,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(14, 190, 127, 1),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black54,
                        offset: Offset(0, 3),
                        blurRadius: 5,
                      ),
                    ],
                  ),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 90.0),
                          child: Text(
                            'Set up your profile',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.0),
                          child: Text(
                            'Update your profile to connect your doctor with better impression',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(height: 15), // Tambahkan SizedBox untuk memberikan jarak antara teks dan gambar
                        Image.asset(
                          'images/pf.png',
                          width: 100,
                        ), // Pindahkan gambar ke dalam Column
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 300,
              left: 0,
              right: 0,
              height: screenSize.height,
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Personal Information', // Teks yang ditambahkan di atas dekorasi
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 15),
                      Container(
                        // width: MediaQuery.of(context).size.width - 2, // Menggunakan lebar layar dikurangi margin kiri dan kanan
                        padding: EdgeInsets.all(16), // Menambahkan padding ke dalam Container
                        decoration: BoxDecoration(
                          color: const Color(0xffffffff),
                          borderRadius: BorderRadius.circular(15),
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
                                  flex: 2,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Name',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: const Color(0xff0ebe7f),
                                            fontWeight: FontWeight.bold
                                        ),
                                      ),

                                      TextField(
                                        decoration: InputDecoration(
                                          hintText: 'Abdullah Mamun',
                                          hintStyle: TextStyle(
                                            fontSize: 14,
                                            color: Colors.grey,
                                          ),
                                          border: InputBorder.none,
                                        ),
                                      ),

                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 5),
                      Container(
                        // width: MediaQuery.of(context).size.width - 2, // Menggunakan lebar layar dikurangi margin kiri dan kanan
                        padding: EdgeInsets.all(16), // Menambahkan padding ke dalam Container
                        decoration: BoxDecoration(
                          color: const Color(0xffffffff),
                          borderRadius: BorderRadius.circular(15),
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
                                  flex: 2,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Contact Number',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: const Color(0xff0ebe7f),
                                            fontWeight: FontWeight.bold
                                        ),
                                      ),
                                      TextField(
                                        decoration: InputDecoration(
                                          hintText: '+8801800000000',
                                          hintStyle: TextStyle(
                                            fontSize: 14,
                                            color: Colors.grey,
                                          ),
                                          border: InputBorder.none,
                                        ),
                                      ),

                                    ],
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Icon(Icons.edit),
                                  ],
                                )
                              ],

                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: 5),
                      Container(
                        // width: MediaQuery.of(context).size.width - 2, // Menggunakan lebar layar dikurangi margin kiri dan kanan
                        padding: EdgeInsets.all(16), // Menambahkan padding ke dalam Container
                        decoration: BoxDecoration(
                          color: const Color(0xffffffff),
                          borderRadius: BorderRadius.circular(15),
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
                                  flex: 2,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Date of birth',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: const Color(0xff0ebe7f),
                                            fontWeight: FontWeight.bold
                                        ),
                                      ),
                                      SizedBox(height:5),
                                      Text(
                                        'DD MM YYYY',
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.grey
                                        ),
                                      ),

                                    ],
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.edit),
                                  ],
                                )
                              ],

                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: 5),
                      Container(
                        // width: MediaQuery.of(context).size.width - 2, // Menggunakan lebar layar dikurangi margin kiri dan kanan
                        padding: EdgeInsets.all(16), // Menambahkan padding ke dalam Container
                        decoration: BoxDecoration(
                          color: const Color(0xffffffff),
                          borderRadius: BorderRadius.circular(15),
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
                                    flex: 2,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Location',
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: const Color(0xff0ebe7f),
                                              fontWeight: FontWeight.bold
                                          ),
                                        ),
                                        SizedBox(height:5),
                                        Text(
                                          'Add details',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.grey
                                          ),
                                        ),

                                      ],
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.edit),
                                    ],
                                  )
                                ],

                              ),
                            ],
                          )
                      ),
                      SizedBox(height: 25),
                      Center(
                        child: ElevatedButton(
                          onPressed: () {

                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(builder: (context) => MedicineOrders()),
                            // );
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


                    ]
                    ,
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
                        // Navigasi ke halaman sebelumnya
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
          ],
        ),
      ),
    );
  }
}
