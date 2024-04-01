import 'dart:js';
import 'package:flutter/material.dart';
import 'package:slicing_ui/screen_pages/21menu_screen.dart';
import 'package:slicing_ui/screen_pages/28location_screen.dart';

class SettingsScreen extends StatelessWidget {
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
              padding: EdgeInsets.symmetric(horizontal: 10), // Padding dalam kotak
              child: Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MenuScreen()),
                      );
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
                    'Settings',
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
            top: 80,
            left: 20,
            right: 0,
            bottom: 0,
            child: ListView(
              children: <Widget>[
                SizedBox(height: 25),
                _buildSectionTitle('Account Settings'),
                _buildListItem(context, 'images/cp.png', 'Change Password', trailingIcon: Icons.navigate_next),
                _buildListItem(context, 'images/notif.png', 'Notifications', trailingIcon: Icons.navigate_next),
                _buildListItem(context, 'images/statistic.png', 'Statistics', trailingIcon: Icons.navigate_next),
                _buildListItem(context, 'images/about.png', 'About us', trailingIcon: Icons.navigate_next),
                SizedBox(height: 30),
                _buildSectionTitle('More Options'),
                _buildToggleListItem(context, 'Text Messages'),
                _buildToggleListItem(context, 'Phone Calls'),
                _buildListItem(context, null, 'Languages', trailingText: 'English', trailingIcon: Icons.navigate_next),
                _buildListItem(context, null, 'Currency', trailingText: '\$-USD', trailingIcon: Icons.navigate_next),
                _buildListItem(context, null, 'Linked accounts', trailingText: 'Facebook, Google',trailingIcon: Icons.navigate_next),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


Widget _buildSectionTitle(String title) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        title,
        style: TextStyle(
          fontSize: 16,
          fontFamily: 'Rubik',
          color: Color.fromRGBO(103, 114, 148, 1),
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(height: 5.0),
    ],
  );
}

Widget _buildListItem(BuildContext context, String? leadingImage, String title, {String trailingText = '', IconData? trailingIcon}) {
  return Container(
    decoration: BoxDecoration(
      border: Border(
        bottom: BorderSide(color: Color.fromARGB(241, 235, 223, 223)),
      ),
    ),
    child: ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 0),
      leading: leadingImage != null ? Image.asset(leadingImage) : null,
      title: Text(
        title,
        style: TextStyle(
            fontSize: 14,

            color: Color.fromRGBO(103, 114, 148, 1)
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

                  color: Color.fromRGBO(103, 114, 148, 1)
              ),
            ),
          if (trailingIcon != null && trailingText.isNotEmpty) SizedBox(width: 8),
          if (trailingIcon != null) Icon(trailingIcon),
        ],
      ),
      onTap: () {
        // Action when list item is tapped
      },
    ),
  );
}




class ToggleButtonWidget extends StatefulWidget {
  final String title;

  ToggleButtonWidget({required this.title});

  @override
  _ToggleButtonWidgetState createState() => _ToggleButtonWidgetState();
}

class _ToggleButtonWidgetState extends State<ToggleButtonWidget> {
  bool isSwitched = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Color.fromARGB(241, 235, 223, 223)),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            widget.title,
            style: TextStyle(
              fontSize: 14,
              fontFamily: 'Rubik',
              color: Color.fromRGBO(103, 114, 148, 1),
            ),
          ),
          Switch(
            value: isSwitched,
            onChanged: (value) {
              setState(() {
                isSwitched = value;
              });
            },
            activeColor: Color.fromARGB(255, 43, 134, 78),
            inactiveTrackColor: Color.fromARGB(255, 187, 185, 185),
            activeTrackColor: Color.fromARGB(255, 30, 208, 119),
            inactiveThumbColor: const Color.fromARGB(255, 241, 239, 239),
            thumbColor: MaterialStateProperty.all(Colors.white),
          ),
        ],
      ),
    );
  }
}

Widget _buildToggleListItem(BuildContext context, String title) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 0),
    margin: EdgeInsets.symmetric(vertical: 0), // Tambahkan margin vertikal di sini
    decoration: BoxDecoration(
      border: Border(
        bottom: BorderSide(color: Color.fromARGB(241, 235, 223, 223)),
      ),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Text(
            title,
            style: TextStyle(
              fontSize: 14,
              fontFamily: 'Rubik',
              color: Color.fromRGBO(103, 114, 148, 1),
            ),
          ),
        ),
        ToggleButtonWidget(title: ""),
      ],
    ),
  );
}

