import 'package:flutter/material.dart';
import 'package:plant/dashboard.dart';
import 'package:plant/setting.dart';
import 'package:plant/bottom.dart';

// ignore: unused_import
import 'package:plant/splashscreen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // alignment: Alignment.center,
        child: Stack(
          children: [
            Positioned(
              child: Container(
                alignment: Alignment.topLeft,
                width: 250,
                height: 250,
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Color.fromARGB(178, 81, 173, 153),
                        blurRadius: 50.0)
                  ],
                  color: Color.fromARGB(0, 45, 222, 45),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(100),
                      bottomRight: Radius.circular(100)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50, top: 60),
              child: Column(
                children: [
                  const Text(
                    "Plants",
                    style: TextStyle(
                      fontFamily: 'montserrat-regular',
                      fontWeight: FontWeight.bold,
                      fontSize: 45,
                    ),
                  ),
                  const Text(
                    "apps",
                    style: TextStyle(
                      fontFamily: 'montserrat-regular',
                      fontWeight: FontWeight.bold,
                      fontSize: 45,
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment(0, 0),
              child: Padding(
                padding: const EdgeInsets.only(top: 190),
                child: Column(
                  children: [
                    Positioned(
                      child: SizedBox(
                        child:
                            Image(image: AssetImage("assets/images/bunga.png")),
                        height: 600,
                        width: 600,
                      ),
                    ),
                    Text(
                      "Welcome",
                      style: TextStyle(
                        fontFamily: 'montserrat-bold',
                        fontWeight: FontWeight.bold,
                        fontSize: 50,
                      ),
                    ),
                    Text(
                      "This is a plant",
                      style: TextStyle(
                        fontFamily: 'montserrat-medium',
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      "reminder app",
                      style: TextStyle(
                        fontFamily: 'montserrat-medium',
                        fontSize: 20,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (context) {
                            return icon();
                          }));
                        },
                        child: Image(
                          image: AssetImage("assets/images/go.png"),
                          height: 100,
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
    );
  }
}
