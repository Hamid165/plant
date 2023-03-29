import 'package:flutter/material.dart';
import 'package:plant/home.dart';
import 'package:plant/setting.dart';
import 'package:plant/view2.dart';
import 'package:plant/view3.dart';
import 'package:plant/view4.dart';
import 'view.dart';

class dashboard extends StatefulWidget {
  const dashboard({super.key});

  @override
  State<dashboard> createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  @override
  int _currentIndex = 0;
  List<Widget> _pages = [
    HomePage(),
    MyHomePage(),
  ];
  void _onBarTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: Color.fromARGB(255, 101, 208, 185),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 0),
        child: Column(
          children: [
            Container(
              height: 400,
              width: 400,
              child: Image(
                image: AssetImage("assets/images/satu.png"),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 10, left: 30),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        child: Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    child: Image(
                                      image: AssetImage(
                                          "assets/images/bungaa.png"),
                                      width: 150,
                                      height: 190,
                                    ),
                                  )
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Container(
                                      margin: EdgeInsets.only(right: 60),
                                      padding:
                                          EdgeInsets.fromLTRB(10, 5, 10, 5),
                                      child: ElevatedButton(
                                          child: Text(
                                            "View ".toUpperCase(),
                                            style: TextStyle(
                                              fontFamily: 'montserrat-bold',
                                              color:
                                                  Color.fromARGB(255, 0, 0, 0),
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15,
                                            ),
                                          ),
                                          style: ButtonStyle(
                                            foregroundColor:
                                                MaterialStateProperty
                                                    .all<Color>(Color.fromARGB(
                                                        255, 0, 0, 0)),
                                            backgroundColor:
                                                MaterialStateProperty
                                                    .all<Color>(Color.fromARGB(
                                                        224, 255, 255, 255)),
                                            shape: MaterialStateProperty.all<
                                                RoundedRectangleBorder>(
                                              RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                            ),
                                          ),
                                          onPressed: () => Navigator.of(context)
                                              .push(MaterialPageRoute(
                                                  builder: (context) =>
                                                      view())))),
                                ),
                              ),
                            ],
                          ),
                        ),
                        height: 270,
                        width: 150,
                        color: Color.fromARGB(50, 119, 116, 116),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10, left: 10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                      child: Image(
                                    image: AssetImage("assets/images/pot.png"),
                                    width: 150,
                                    height: 190,
                                  ))
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Container(
                                      margin: EdgeInsets.only(right: 60),
                                      padding:
                                          EdgeInsets.fromLTRB(10, 5, 10, 5),
                                      child: ElevatedButton(
                                          child: Text(
                                            "View ".toUpperCase(),
                                            style: TextStyle(
                                              fontFamily: 'montserrat-bold',
                                              color:
                                                  Color.fromARGB(255, 0, 0, 0),
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15,
                                            ),
                                          ),
                                          style: ButtonStyle(
                                            foregroundColor:
                                                MaterialStateProperty
                                                    .all<Color>(Color.fromARGB(
                                                        255, 0, 0, 0)),
                                            backgroundColor:
                                                MaterialStateProperty
                                                    .all<Color>(Color.fromARGB(
                                                        224, 255, 255, 255)),
                                            shape: MaterialStateProperty.all<
                                                RoundedRectangleBorder>(
                                              RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                            ),
                                          ),
                                          onPressed: () => Navigator.of(context)
                                              .push(MaterialPageRoute(
                                                  builder: (context) =>
                                                      view2())))),
                                ),
                              ),
                            ],
                          ),
                        ),
                        height: 270,
                        width: 150,
                        color: Color.fromARGB(50, 119, 116, 116),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 10, left: 10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                      child: Image(
                                    image:
                                        AssetImage("assets/images/kuping.png"),
                                    width: 150,
                                    height: 190,
                                  ))
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Container(
                                      margin: EdgeInsets.only(right: 60),
                                      padding:
                                          EdgeInsets.fromLTRB(10, 5, 10, 5),
                                      child: ElevatedButton(
                                          child: Text(
                                            "View ".toUpperCase(),
                                            style: TextStyle(
                                              fontFamily: 'montserrat-bold',
                                              color:
                                                  Color.fromARGB(255, 0, 0, 0),
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15,
                                            ),
                                          ),
                                          style: ButtonStyle(
                                            foregroundColor:
                                                MaterialStateProperty
                                                    .all<Color>(Color.fromARGB(
                                                        255, 0, 0, 0)),
                                            backgroundColor:
                                                MaterialStateProperty
                                                    .all<Color>(Color.fromARGB(
                                                        224, 255, 255, 255)),
                                            shape: MaterialStateProperty.all<
                                                RoundedRectangleBorder>(
                                              RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                            ),
                                          ),
                                          onPressed: () => Navigator.of(context)
                                              .push(MaterialPageRoute(
                                                  builder: (context) =>
                                                      view3())))),
                                ),
                              ),
                            ],
                          ),
                        ),
                        height: 270,
                        width: 150,
                        color: Color.fromARGB(50, 119, 116, 116),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 10, left: 10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        child: Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    child: Image(
                                      image: AssetImage(
                                          "assets/images/bungaa.png"),
                                      width: 150,
                                      height: 190,
                                    ),
                                  )
                                ],
                              ),
                              Padding(
                                  padding: const EdgeInsets.only(),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Container(
                                        margin: EdgeInsets.only(right: 60),
                                        padding:
                                            EdgeInsets.fromLTRB(10, 5, 10, 5),
                                        child: ElevatedButton(
                                            child: Text(
                                              "View ".toUpperCase(),
                                              style: TextStyle(
                                                fontFamily: 'montserrat-bold',
                                                color: Color.fromARGB(
                                                    255, 0, 0, 0),
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15,
                                              ),
                                            ),
                                            style: ButtonStyle(
                                              foregroundColor:
                                                  MaterialStateProperty.all<
                                                          Color>(
                                                      Color.fromARGB(
                                                          255, 0, 0, 0)),
                                              backgroundColor:
                                                  MaterialStateProperty.all<
                                                          Color>(
                                                      Color.fromARGB(
                                                          224, 255, 255, 255)),
                                              shape: MaterialStateProperty.all<
                                                  RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                ),
                                              ),
                                            ),
                                            onPressed: () =>
                                                Navigator.of(context).push(
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            view4())))),
                                  )),
                            ],
                          ),
                        ),
                        height: 270,
                        width: 150,
                        color: Color.fromARGB(50, 119, 116, 116),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
