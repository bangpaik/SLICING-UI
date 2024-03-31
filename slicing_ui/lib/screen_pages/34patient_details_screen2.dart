import 'package:flutter/material.dart';
import 'package:slicing_ui/screen_pages/35privacy_policy_screen.dart';

enum Gender {
  Male,
  Female,
  Others,
}

class PatientDetailsScreenDua extends StatefulWidget {
  const PatientDetailsScreenDua({Key? key}) : super(key: key);

  @override
  _PatientDetailsScreenDuaState createState() => _PatientDetailsScreenDuaState();
}

class _PatientDetailsScreenDuaState extends State<PatientDetailsScreenDua> {
  Gender? _gender;

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
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
                    Row(
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
                        )
                      ],
                    ),
                  ],
                ),
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
                  'Patient Details',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: screenSize.height * 0.30,
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'images/step.png',
                      width: screenSize.width * 1,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.white,
                width: 0,
              ),
            ),
            margin: EdgeInsets.only(
              top: screenSize.height * 0.19,
              left: screenSize.width * 0.17,
              right: screenSize.width * 0.1,
            ),
            width: screenSize.width * 0.65,
            height: screenSize.height * 0.65,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Patients Name',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Abdullah Mamun',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Age',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 20),
                              TextFormField(
                                decoration: InputDecoration(
                                  labelText: 'Day',
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 20),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 20),
                              TextFormField(
                                decoration: InputDecoration(
                                  labelText: 'Month',
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 20),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 20),
                              TextFormField(
                                decoration: InputDecoration(
                                  labelText: 'Year',
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Gender',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        Radio(
                          value: Gender.Male,
                          groupValue: _gender,
                          onChanged: (value) {
                            setState(() {
                              _gender = value as Gender?;
                            });
                          },
                        ),
                        Text('Male'),
                        SizedBox(width: 20),
                        Radio(
                          value: Gender.Female,
                          groupValue: _gender,
                          onChanged: (value) {
                            setState(() {
                              _gender = value as Gender?;
                            });
                          },
                        ),
                        Text('Female'),
                        SizedBox(width: 20),
                        Radio(
                          value: Gender.Female,
                          groupValue: _gender,
                          onChanged: (value) {
                            setState(() {
                              _gender = value as Gender?;
                            });
                          },
                        ),
                        Text('Others'),
                      ],
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Mobile Number',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: '+8801000000000',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Email',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'itsmemamun1@gmail.com',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: screenSize.height * 1.8,
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PrivacyPolicyScreen(),
                              ),
                            );
                          },
                          child: Text(
                            "Continue",
                            style: TextStyle(fontSize: 18),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromRGBO(14, 190, 127, 1),
                            foregroundColor: Colors.white,
                            minimumSize: Size(350, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            elevation: 5,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
