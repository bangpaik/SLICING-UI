import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';
import 'package:slicing_ui/screen_pages/11favorite_doctor_screen.dart';
import 'package:slicing_ui/screen_pages/22my_doctors_screen.dart';
import 'package:slicing_ui/screen_pages/23medical_records_screen01.dart';
import 'package:slicing_ui/screen_pages/27medicine_orders.dart';
import 'package:slicing_ui/screen_pages/30help_center.dart';
import 'package:slicing_ui/screen_pages/36setting_screen.dart';
import 'package:slicing_ui/screen_pages/38doctors_screen.dart';
import 'package:slicing_ui/screen_pages/39profile01.dart';

void main() {
  runApp(MenuScreen());
}

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Liquid Shrink SideMenu',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Liquid Ui Shrink SideMenus'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isOpened = false;

  final GlobalKey<SideMenuState> _sideMenuKey = GlobalKey<SideMenuState>();
  final GlobalKey<SideMenuState> _endSideMenuKey = GlobalKey<SideMenuState>();

  toggleMenu([bool end = false]) {
    if (end) {
      final _state = _endSideMenuKey.currentState!;
      if (_state.isOpened) {
        _state.closeSideMenu();
      } else {
        _state.openSideMenu();
      }
    } else {
      final _state = _sideMenuKey.currentState!;
      if (_state.isOpened) {
        _state.closeSideMenu();
      } else {
        _state.openSideMenu();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return SideMenu(
      key: _sideMenuKey,
      menu: buildMenu(),
      background: const Color.fromRGBO(111, 127, 161, 1),
      type: SideMenuType.shrinkNSlide,
      onChange: (_isOpened) {
        setState(() => isOpened = _isOpened);
      },
      child: Scaffold(
        body: SingleChildScrollView(
          clipBehavior: Clip.none,
          child: Stack(
            children: [
              Container(
                width: screenSize.width,
                height: screenSize.height * 1.3,
                decoration: const BoxDecoration(
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
                height: 150,
                child: SafeArea(
                  child: Container(
                    padding: const EdgeInsets.only(top: 5, right: 14, left: 14),
                    height: 280,
                    alignment: Alignment.topCenter,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(14, 190, 127, 1),
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(40),
                        bottomRight: Radius.circular(40),
                      ),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black54,
                          offset: Offset(0, 3),
                          blurRadius: 5,
                        ),
                      ],
                    ),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 50.0),
                                child: const Text(
                                  'Hi Hindwarker!',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              SizedBox(height: 5),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 0.0),
                                child: const Text(
                                  'Find Your Doctor',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 10.0),
                                child: Image.asset(
                                  'images/5gravatar.png',
                                  width: 100,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 16,
                top: 120,
                right: 16,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 1,
                        blurRadius: 3,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      const Icon(Icons.search, color: Colors.grey,),
                      SizedBox(width: 8),
                      Expanded(
                        child: TextFormField(
                          decoration: const InputDecoration(
                            hintText: 'Search',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.close, color: Colors.grey,),
                        onPressed: () {
                          // Tambahkan logika untuk menghapus teks pencarian di sini
                        },
                      ),

                    ],
                  ),
                ),
              ),

              Positioned(
                left: 0,
                top: 180,
                right: 0,
                child:  Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      SizedBox(height: 20),
                      Text(
                        'Live Doctors',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            _buildDoctorCard('images/livedoctor1.png'),
                            SizedBox(width: 5),
                            _buildDoctorCard('images/livedoctor2.png'),
                            SizedBox(width: 5),
                            _buildDoctorCard('images/livedoctor3.png'),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            _buildIconCard('images/5gigi.png'),
                            SizedBox(width: 5),
                            _buildIconCard('images/5jantung.png'),
                            SizedBox(width: 5),
                            _buildIconCard('images/5mata.png'),
                            SizedBox(width: 5),
                            _buildIconCard('images/5pinggang.png'),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        '',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            _buildPopulerDoctorCard('images/5populerdoctor1.png'),
                            SizedBox(width: 15),
                            _buildPopulerDoctorCard('images/5populerdoctor2.png'),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        '',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            _buildFeatureDoctorCard('images/5featuredoctor1.png'),
                            SizedBox(width: 15),
                            _buildFeatureDoctorCard('images/5featuredoctor2.png'),
                            SizedBox(width: 15),
                            _buildFeatureDoctorCard('images/5featuredoctor3.png'),
                            SizedBox(width: 15),
                            _buildFeatureDoctorCard('images/5featuredoctor4.png'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 0,
                left: 0,
                child: IconButton(
                  icon: const Icon(Icons.menu),
                  onPressed: () => toggleMenu(),
                ),
              ),
            ],
          ),
        ),

        bottomNavigationBar: Container(
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
    );
  }
  Widget _buildDoctorCard(String imagePath) {
    return Container(
      width: 160,
      height: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildPopulerDoctorCard(String imagePath) {
    return Container(
      width: 250,
      height: 350,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildFeatureDoctorCard(String imagePath) {
    return Container(
      width: 125,
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildIconCard(String imagePath) {
    return Container(
      width: 112,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
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
  Widget buildMenu() {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: 50.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Profile01()),
              );
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage('images/profile.png'),
                    radius: 22.0,
                  ),
                  SizedBox(width: 16.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Abdullah Mamun ",
                        style: TextStyle(color: Colors.white),
                      ),
                      Row(
                        children: [
                          Icon(
                            CupertinoIcons.phone_fill,
                            size: 15,
                            color: Colors.white,
                          ),
                          SizedBox(width: 5),
                          Text("01303-527300", style: TextStyle(color: Colors.white)),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 75.0),
                ],
              ),
            ),
          ),

          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyDoctors()),
              );
            },
            leading: const Icon(Icons.person, size: 20.0, color: Colors.white),
            title: const Text("My Doctors"),
            textColor: Colors.white,
            dense: true,
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MedicalRecordsScreen01()),
              );
            },
            leading: Image.asset('images/mr.png'),
            title: const Text("Medical Records"),
            textColor: Colors.white,
            dense: true,
          ),
          ListTile(
            onTap: () {},
            leading: const Icon(Icons.payment_outlined, size: 20.0, color: Colors.white),
            title: const Text("Payment"),
            textColor: Colors.white,
            dense: true,
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MedicineOrders()),
              );
            },
            leading: const Icon(Icons.medical_services, size: 20.0, color: Colors.white),
            title: Row(
              children: [
                const Text("Medicine Orders"),

              ],
            ),
            textColor: Colors.white,
            dense: true,
          ),

          ListTile(
            onTap: () {},
            leading: const Icon(Icons.calendar_month, size: 20.0, color: Colors.white),
            title: const Text("Test Bookings"),
            textColor: Colors.white,
            dense: true,
          ),
          ListTile(
            onTap: () {},
            leading: const Icon(Icons.privacy_tip, size: 20.0, color: Colors.white),
            title: const Text("Privacy & Policy"),
            textColor: Colors.white,
            dense: true,
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HelpCenter()),
              );
            },
            leading: const Icon(Icons.help, size: 20.0, color: Colors.white),
            title: const Text("Help Center"),
            textColor: Colors.white,
            dense: true,
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SettingsScreen()),
              );
            },
            leading: const Icon(Icons.settings, size: 20.0, color: Colors.white),
            title: const Text("Settings"),
            textColor: Colors.white,
            dense: true,
          ),
          SizedBox(height: 30),
          ListTile(
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text("Logout", style: TextStyle(fontWeight: FontWeight.bold),),
                    content: Text("Are you sure you want to logout?", style: TextStyle(color: Colors.grey),),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text("Cancel",
                        style: TextStyle(
                          color: Color.fromRGBO(14, 190, 127, 1),
                          fontWeight: FontWeight.bold
                        ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => DoctorsScreen()),
                          );
                        },
                        child: Text("Ok",
                          style: TextStyle(
                              color: Color.fromRGBO(14, 190, 127, 1),
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ],

                  );
                },
              );

            },
            leading: const Icon(Icons.logout, size: 20.0, color: Colors.white),
            title: const Text("Logout"),
            textColor: Colors.white,
            dense: true,
          ),
        ],
      ),
    );
  }
}
