import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:plant/bottom.dart';
import 'package:plant/dashboard.dart';

void main() => runApp(MyHomePage());

class MyHomePage extends StatefulWidget {
  @override
  setting createState() => setting();
}

class setting extends State<MyHomePage> {
  //switchbutton
  bool status = false;
  bool status1 = false;
  bool status2 = false;
//buttonday
  bool button1 = true;
  bool button2 = false;

  ////function switch
  onChangeFuntion1(bool newValue) {
    setState(() {
      status = newValue;
    });
  }

  onChangeMethod2(bool newValue1) {
    setState(() {
      status1 = newValue1;
    });
  }

  onChangeMethod3(bool newValue2) {
    setState(() {
      status2 = newValue2;
    });
  }

//function button
  switchday(String day) {
    setState(() {
      if (day == 'Tue') {
        this.button1 = false;
        this.button2 = true;
      }
      if (day == 'Mon') {
        this.button1 = true;
        this.button2 = false;
      }
      ;
    });
    print(button1);
  }

  // bool isSwitched = false;
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material Apps',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            color: Color.fromARGB(177, 0, 0, 0),
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) {
                return icon();
              }));
            },
          ),
          title: Text(
            'Setting',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Waters Day",
                  style: TextStyle(
                    fontFamily: 'montserrat-bold',
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ),
            ),
            SingleChildScrollView(
              padding: const EdgeInsets.only(top: 25),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                        child: ElevatedButton(
                          child: this.button1 == true
                              ? Text(
                                  'Mon',
                                  style: TextStyle(
                                      fontFamily: 'montserrat-bold',
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                )
                              : Text(
                                  'Mon',
                                  style: TextStyle(color: Colors.black),
                                ),
                          style: ElevatedButton.styleFrom(
                            primary: this.button1 == true
                                ? Color.fromARGB(255, 0, 0, 0)
                                : Color.fromARGB(255, 217, 217, 217),
                            // side: BorderSide(color: Colors.yellow, width: 5),
                            textStyle: TextStyle(
                              fontFamily: 'montserrat-bold',
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                          onPressed: () {
                            switchday('Mon');
                          },
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                        child: ElevatedButton(
                          child: this.button2 == true
                              ? Text(
                                  'Tue',
                                  style: TextStyle(
                                      fontFamily: 'montserrat-bold',
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                )
                              : Text(
                                  'Tue',
                                  style: TextStyle(color: Colors.black),
                                ),
                          style: ElevatedButton.styleFrom(
                            primary: this.button2 == true
                                ? Color.fromARGB(255, 0, 0, 0)
                                : Color.fromARGB(255, 217, 217, 217),
                            // side: BorderSide(color: Colors.yellow, width: 5),
                            textStyle: TextStyle(
                              fontFamily: 'montserrat-bold',
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),

                            // side: BorderSide(color: Colors.yellow, width: 5),
                          ),
                          onPressed: () {
                            switchday('Tue');
                          },
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                        child: ElevatedButton(
                          child: Text(
                            'Wed',
                            style: TextStyle(
                              fontFamily: 'montserrat-bold',
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 217, 217, 217),
                            // side: BorderSide(color: Colors.yellow, width: 5),
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                        child: ElevatedButton(
                          child: Text(
                            'Thur',
                            style: TextStyle(
                              fontFamily: 'montserrat-bold',
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 217, 217, 217),
                            // side: BorderSide(color: Colors.yellow, width: 5),
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                        child: ElevatedButton(
                          child: Text(
                            'Frid',
                            style: TextStyle(
                              fontFamily: 'montserrat-bold',
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 217, 217, 217),
                            // side: BorderSide(color: Colors.yellow, width: 5),
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                        child: ElevatedButton(
                          child: Text(
                            'Satur',
                            style: TextStyle(
                              fontFamily: 'montserrat-bold',
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 217, 217, 217),
                            // side: BorderSide(color: Colors.yellow, width: 5),
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                        child: ElevatedButton(
                          child: Text(
                            'Sun',
                            style: TextStyle(
                              fontFamily: 'montserrat-bold',
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 217, 217, 217),
                            // side: BorderSide(color: Colors.yellow, width: 5),
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, bottom: 10),
              child: Divider(
                thickness: 1,
                color: Colors.black,
              ),
            ),
            SingleChildScrollView(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "SET REMINDERS",
                        style: TextStyle(
                          fontFamily: 'montserrat-bold',
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 220),
                    child: FlutterSwitch(
                      onToggle: onChangeFuntion1,
                      width: 60.0,
                      height: 30.0,
                      valueFontSize: 10.0,
                      toggleSize: 20.0,
                      value: status,
                      borderRadius: 30.0,
                      padding: 8.0,
                      showOnOff: true,
                      activeColor: Color.fromARGB(255, 101, 208, 185),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: Divider(
                thickness: 1,
                color: Colors.black,
              ),
            ),
            SingleChildScrollView(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "DAY",
                        style: TextStyle(
                          fontFamily: 'montserrat-bold',
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 290),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Water Day",
                        style: TextStyle(
                          fontFamily: 'montserrat-bold',
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: Divider(
                thickness: 1,
                color: Colors.black,
              ),
            ),
            SingleChildScrollView(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "TIME",
                        style: TextStyle(
                          fontFamily: 'montserrat-bold',
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 325),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "08.30",
                        style: TextStyle(
                          fontFamily: 'montserrat-bold',
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: Divider(
                thickness: 1,
                color: Colors.black,
              ),
            ),
            SingleChildScrollView(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "WATER SPRYING",
                        style: TextStyle(
                          fontFamily: 'montserrat-bold',
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 220),
                    child: FlutterSwitch(
                      width: 60.0,
                      height: 30.0,
                      valueFontSize: 10.0,
                      toggleSize: 20.0,
                      value: status1,
                      borderRadius: 30.0,
                      padding: 8.0,
                      showOnOff: true,
                      onToggle: onChangeMethod2,
                      activeColor: Color.fromARGB(255, 101, 208, 185),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: Divider(
                thickness: 1,
                color: Colors.black,
              ),
            ),
            SingleChildScrollView(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "PLANT FOOD",
                        style: TextStyle(
                          fontFamily: 'montserrat-bold',
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 250),
                    child: FlutterSwitch(
                      width: 60.0,
                      height: 30.0,
                      valueFontSize: 10.0,
                      toggleSize: 20.0,
                      value: status2,
                      borderRadius: 30.0,
                      padding: 8.0,
                      showOnOff: true,
                      onToggle: onChangeMethod3,
                      activeColor: Color.fromARGB(255, 101, 208, 185),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: Divider(
                thickness: 1,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
