import 'package:flutter/material.dart';

class HelpCenter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
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
            right: 0,
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween, // Menggunakan MainAxisAlignment.spaceBetween
                  children: [
                    Text(
                      '9:41',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row( // Menambahkan Row untuk bar sinyal dan baterai
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
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Tambahkan fungsi kembali ke halaman sebelumnya
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      minimumSize: Size(0, 40),
                      padding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.arrow_back_ios_new,
                        size: 16,
                        color: Color.fromRGBO(103, 114, 148, 1),
                      ),
                    ),
                  ),
                  SizedBox(width: 15),
                  Text(
                    'Help Center',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 16,
            top: 90,
            right: 16,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              height: 45,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
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
                  SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      'I have an issue with',
                      style: TextStyle(
                        color: Color.fromRGBO(14, 190, 127, 1),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 140,
            left: 20,
            right: 20,
            bottom: 0,
            child: ListView(
              children: <Widget>[
                SizedBox(height: 10),
                Spacer(),
                _buildListItem(context, 'Booking a new Appointment', trailingIcon: Icons.navigate_next),
                _buildListItem(context, 'Existing Appointment', trailingIcon: Icons.navigate_next),
                _buildListItem(context, 'Online consultations', trailingIcon: Icons.navigate_next),
                _buildListItem(context, 'Feedbacks', trailingIcon: Icons.navigate_next),
                _buildListItem(context, 'Medicine orders', trailingIcon: Icons.navigate_next),
                _buildListItem(context, 'Diagnostic Tests', trailingIcon: Icons.navigate_next),
                _buildListItem(context, 'Health plans', trailingIcon: Icons.navigate_next),
                _buildListItem(context, 'My account and Practo Drive', trailingIcon: Icons.navigate_next),
                _buildListItem(context, 'Have a feature in mind', trailingIcon: Icons.navigate_next),
                _buildListItem(context, 'Other issues', trailingIcon: Icons.navigate_next),
              ],
            ),
          ),
          Positioned(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: const EdgeInsets.only(bottom: 5),
                width: 150,
                height: 3,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(50),
                ),
            ),

          ),
          )
        ],
      ),
    );
  }
}

Widget _buildListItem(BuildContext context, String title, {String trailingText = '', IconData? trailingIcon}) {
  return Container(
    child: ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 0),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 14,
          color: Color.fromRGBO(103, 114, 148, 1),
        ),
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (trailingText.isNotEmpty)
            Text(
              trailingText,
              style: TextStyle(
                fontSize: 12,
                fontFamily: 'Rubik',
                color: Color.fromRGBO(103, 114, 148, 1),
              ),
            ),
          if (trailingIcon != null && trailingText.isNotEmpty) SizedBox(width: 8),
          if (trailingIcon != null) Icon(trailingIcon),
        ],
      ),
      //
      onLongPress: () {
        // Jika ingin menambahkan fungsi untuk aksi long press
      },
    ),
  );
}

