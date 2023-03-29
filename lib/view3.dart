import 'package:flutter/material.dart';
import 'package:plant/home.dart';
import 'package:plant/setting.dart';

class view3 extends StatefulWidget {
  const view3({super.key});

  @override
  State<view3> createState() => _view3State();
}

class _view3State extends State<view3> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        child: Scaffold(
            backgroundColor: Color.fromARGB(225, 132, 197, 183),
            appBar: AppBar(
              leading: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () => Navigator.of(context).pop(),
              ),
              title: Text('Detail'),
              backgroundColor: Color.fromARGB(255, 101, 201, 208),
              centerTitle: true,
            ),
            body: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Image(
                        image: AssetImage("assets/images/kuping.png"),
                        width: 300,
                        height: 300,
                      ),
                    ),
                    SizedBox(width: 10), // Membuat jarak antara gambar dan teks
                    Row(
                      children: [
                        Opacity(
                          opacity: 0.5,
                          child: Text(
                            'Size\nSmall\n\n\nTemperature\n12-20 C',
                            style: TextStyle(
                              fontFamily: 'montserrat-bold',
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 30,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Container(
                      height: 600,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.white,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Text(
                              "Talas Ungu",
                              style: TextStyle(
                                fontFamily: 'montserrat-bold',
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontWeight: FontWeight.bold,
                                fontSize: 50,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 40, right: 20, top: 20),
                            child: Text(
                              "Pohon Talas (Colocasia esculenta) adalah jenis tanaman yang berasal dari Asia Tenggara dan Pasifik. Tanaman ini juga dikenal dengan sebutan Arum atau Taro. Tanaman ini memiliki daun besar berbentuk hati yang tumbuh langsung dari tanah, dan biasanya ditanam untuk dimanfaatkan umbinya yang dapat dimakan.",
                              style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontSize: 40,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
