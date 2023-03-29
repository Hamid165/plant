import 'package:flutter/material.dart';
import 'package:plant/home.dart';
import 'package:plant/setting.dart';

class view2 extends StatefulWidget {
  const view2({super.key});

  @override
  State<view2> createState() => _view2State();
}

class _view2State extends State<view2> {
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
                        image: AssetImage("assets/images/pot.png"),
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
                              " Monstera Deliciosa",
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
                              "Monstera Deliciosa adalah tanaman hias populer yang berasal dari daerah Amerika Tengah dan Selatan. Tanaman ini dikenal dengan nama lain seperti Swiss Cheese Plant atau Philodendron Pertusum. Monstera Deliciosa memiliki daun besar dan berlubang yang khas, dengan pola serupa seperti lubang-lubang kecil di antara vena daunnya.",
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
