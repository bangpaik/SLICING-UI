import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:slicing_ui/screen_pages/16sign_up_screen.dart';

class DoctorAppointmentScreenDua extends StatelessWidget {
  const DoctorAppointmentScreenDua({Key? key}) : super(key: key);

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
                        Navigator.of(context).pop();
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

              // Kalender
              Positioned(
                top: screenSize.height * 0.1,
                left: 0,
                right: 0,
                child: TableCalendar(
                  focusedDay: DateTime(2021, 2, 1),
                  firstDay: DateTime(2021, 1, 1),
                  lastDay: DateTime(2021, 2, 28),
                  calendarFormat: CalendarFormat.month,
                  startingDayOfWeek: StartingDayOfWeek.sunday,
                  headerStyle: HeaderStyle(
                    formatButtonVisible: false,
                  ),
                  calendarStyle: CalendarStyle(
                    todayDecoration: BoxDecoration(
                      color: Colors.blue[200],
                      shape: BoxShape.circle,
                    ),
                    selectedDecoration: BoxDecoration(
                      color: Colors.blue[400],
                      shape: BoxShape.circle,
                    ),
                    selectedTextStyle: TextStyle(color: Colors.white),
                    outsideDaysVisible: false,
                    weekendTextStyle: TextStyle(color: Colors.red),
                  ),
                  calendarBuilders: CalendarBuilders(
                    defaultBuilder: (context, day, focusedDay) {
                      if (day.day == 17) {
                        return Center(
                          child: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              color: const Color(0xff0ebe7f),
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: Text(
                                day.day.toString(),
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        );
                      }
                      return null;
                    },
                  ),
                ),
              ),

              //Disini who is this patient?
              Positioned(
                top: screenSize.height * 0.53,
                left: 0,
                width: screenSize.width * 1,
                height: 409,
                child: Container(
                  width: 375,
                  height: 409,
                  decoration: BoxDecoration(
                    color: const Color(0xffffffff),
                    boxShadow: const [
                      BoxShadow(
                          color: const Color(0x0f000000),
                          offset: Offset(0, 0),
                          blurRadius: 25),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 30,
                width: screenSize.width * 0.9,
                top: screenSize.height * 0.9,
                height: 54,
                child: Container(
                  width: screenSize.width * 1,
                  height: 54,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        width: screenSize.width * 0.9,
                        top: 0,
                        height: 54,
                        child: Container(
                          width: screenSize.width * 0.9,
                          height: 54,
                          decoration: BoxDecoration(
                            color: const Color(0xff0ebe7f),
                            borderRadius: BorderRadius.circular(6),
                          ),
                        ),
                      ),

                      Positioned(
                        left: 0,
                        width: screenSize.width * 0.9,
                        top: 18,
                        height: 25,
                        child: GestureDetector(
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  content: Container(
                                    height: screenSize.height * 0.6, // Ubah tinggi container sesuai kebutuhan Anda
                                    width: screenSize.width * 0.8, // Ubah lebar container sesuai kebutuhan Anda
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          height: 200, // Sesuaikan tinggi gambar dengan kebutuhan Anda
                                          width: 200, // Sesuaikan lebar gambar dengan kebutuhan Anda
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage('images/jempol.png'), // Tambahkan gambar jempol
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 20), // Tambahkan jarak antara gambar dan teks
                                        Text(
                                          'Thank You',
                                          style: TextStyle(
                                            fontSize: 36,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(height: 10), // Tambahkan jarak antara teks "Thank You" dan teks selanjutnya
                                        Text(
                                          'Your Appointment Successful',
                                          style: TextStyle(
                                            fontSize: 28,
                                          ),
                                        ),
                                        SizedBox(height: 20),
                                        Text(
                                          'You booked an appointment with Dr. Pediatrician Purpieson on February 21, at 02:00 PM',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 18,
                                          ),
                                        ),
                                        SizedBox(height: 20),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            ElevatedButton(
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) => SignUpScreen()),
                                                );
                                              },
                                              style: ButtonStyle(
                                                backgroundColor: MaterialStateProperty.all(const Color(0xff0ebe7f)), // Warna latar hijau
                                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                                  RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(20), // Border radius 20
                                                  ),
                                                ),
                                              ),
                                              child: Text(
                                                'Done',
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  color: const Color(0xffffffff),
                                                  fontFamily: 'Rubik-Medium',
                                                  fontWeight: FontWeight.normal,
                                                ),
                                                maxLines: 9999,
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            ),

                                          ],
                                        ),



                                        SizedBox(height: 10), // Tambahkan jarak antara tombol "Done" dan tulisan "Edit your appointment"
                                        Text(
                                          'Edit your appointment',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 14,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                          child: Text(
                            'Confirm',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 18,
                              color: const Color(0xffffffff),
                              fontFamily: 'Rubik-Medium',
                              fontWeight: FontWeight.normal,
                            ),
                            maxLines: 9999,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),



                    ],
                  ),
                ),
              ),

              Positioned(
                left: 20,
                width: screenSize.width * 0.9,
                top: 440,
                height: 110,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Text(
                        'Available Time',
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
                    ),
                    // Disini lingkaran dan tulisan
                    for (int i = 0; i < 5; i++)
                      Positioned(
                        left: (i * 120).toDouble(), // Jarak antar lingkaran
                        top: 30, // Sesuaikan posisi vertikal gambar lingkaran di atas teks
                        child: Container(
                          width: 100, // Sesuaikan dengan lebar gambar
                          height: 100, // Sesuaikan dengan tinggi gambar
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Image.asset(
                                  i == 2 ? 'images/bulat15.png' : 'images/bulat14.png', // Gunakan images/bulat15.png jika i == 2, jika tidak gunakan images/bulat14.png
                                  width: 100, // Sesuaikan dengan lebar gambar
                                  height: 100, // Sesuaikan dengan tinggi gambar
                                ),
                              ),
                              Positioned(
                                left: 30,
                                top: 30,
                                child: Text(
                                  '${['10:00\nAM', '12:00\nAM', '02:00\nPM', '03:00\nPM', '04:00\nPM'][i]}',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontSize: 14, // Sesuaikan ukuran font dengan kebutuhan Anda
                                    fontFamily: 'Rubik-Regular',
                                    fontWeight: FontWeight.normal,
                                    color: i == 2 ? Colors.white : Colors.black, // Gunakan warna putih jika i == 2, jika tidak gunakan warna hitam
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

              Positioned(
                left: 20,
                width: screenSize.width * 0.9,
                top: 580,
                height: 110,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Text(
                        'Reminder Me Before',
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
                    ),
                    // Disini lingkaran dan tulisan
                    for (int i = 0; i < 5; i++)
                      Positioned(
                        left: (i * 120).toDouble(), // Jarak antar lingkaran
                        top: 30, // Sesuaikan posisi vertikal gambar lingkaran di atas teks
                        child: Container(
                          width: 100, // Sesuaikan dengan lebar gambar
                          height: 100, // Sesuaikan dengan tinggi gambar
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Image.asset(
                                  i == 2 ? 'images/bulat15.png' : 'images/bulat14.png', // Gunakan images/bulat15.png jika i == 2, jika tidak gunakan images/bulat14.png
                                  width: 100, // Sesuaikan dengan lebar gambar
                                  height: 100, // Sesuaikan dengan tinggi gambar
                                ),
                              ),
                              Positioned(
                                left: 30,
                                top: 30,
                                child: Text(
                                  '${[30, 40, 25, 10, 35][i]}\nMinit',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontSize: 14, // Sesuaikan ukuran font dengan kebutuhan Anda
                                    fontFamily: 'Rubik-Regular',
                                    fontWeight: FontWeight.normal,
                                    color: i == 2 ? Colors.white : Colors.black, // Gunakan warna putih jika i == 2, jika tidak gunakan warna hitam
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
