// ignore_for_file: library_private_types_in_public_api

import 'dart:async';
import 'package:plant/home.dart';
import 'package:flutter/material.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key});

  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    super.initState();
    startSplashScreen();
  }

  startSplashScreen() async {
    var duration = const Duration(seconds: 2);
    return Timer(
      duration,
      () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) {
            return HomePage();
          }),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 118, 183, 169),
      body: Center(
        child: Container(
          width: 320,
          height: 320,
          decoration: const BoxDecoration(
            boxShadow: [BoxShadow(color: Colors.white, blurRadius: 70.0)],
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(100),
                bottomRight: Radius.circular(100)),
          ),
          child: Positioned(
            child: Image.asset(
              "assets/images/splash.png",
            ),
          ),
        ),
      ),
    );
  }
}
