import 'package:flutter/material.dart';
import 'package:plant/home.dart';
import 'package:plant/setting.dart';

class view extends StatefulWidget {
  const view({super.key});

  @override
  State<view> createState() => _viewState();
}

class _viewState extends State<view> {
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
                        image: AssetImage("assets/images/bungaa.png"),
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
                              "Aglonema",
                              style: TextStyle(
                                fontFamily: 'montserrat-bold',
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontWeight: FontWeight.bold,
                                fontSize: 50,
                                
                              ),
                              
                            ),
                            
                         ),
                         Padding(
                           padding: const EdgeInsets.only(left: 40,right: 20, top: 20),
                           child: Text(
                              "Aglaonema adalah salah satu tanaman hias yang populer di dunia. Tanaman ini berasal dari daerah Asia Tenggara, dan memiliki daun hijau yang indah dan menarik, dengan berbagai pola warna seperti putih, kuning, merah, atau perak.Aglaonema termasuk tanaman yang mudah tumbuh dan dirawat, sehingga cocok untuk pemula dalam hal berkebun. Tanaman ini dapat ditanam di dalam ruangan atau di luar ruangan dengan kondisi yang tepat.",
                              style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontSize: 35,
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
