import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_alarm_clock/flutter_alarm_clock.dart';

void main() {
  runApp(alarm());
}

class alarm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Alarm Clock',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
// creating text ediiting controller to take hour
// and minute as input
  TextEditingController hourController = TextEditingController();
  TextEditingController minuteController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(175, 72, 199, 203),
        title: const Text('Create Alarm'),
        centerTitle: true,
      ),
      body: Center(
          child: Column(children: <Widget>[
        SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Container(
                margin: EdgeInsets.only(right: 156),
                child: Text(
                  "INPUT TIME",
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, bottom: 15),
              child: Container(
                height: 40,
                width: 60,
                // decoration: BoxDecoration(
                //     shape: BoxShape.rectangle,
                //     color: Color.fromARGB(255, 59, 255, 134),
                //     borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: TextField(
                    controller: hourController,
                    keyboardType: TextInputType.number,
                  ),
                ),
              ),
            ),
            SizedBox(width: 20),
            Padding(
              padding: const EdgeInsets.only(right: 20, bottom: 15),
              child: Container(
                height: 40,
                width: 60,
                // decoration: BoxDecoration(
                //     shape: BoxShape.rectangle,
                //     color: Colors.yellow,
                //     borderRadius: BorderRadius.circular(11)),
                child: Center(
                  child: TextField(
                    controller: minuteController,
                    keyboardType: TextInputType.number,
                  ),
                ),
              ),
            ),
          ],
        ),
        SingleChildScrollView(
            child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 40),
              child: Container(
                margin: const EdgeInsets.all(25),
                child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Color.fromARGB(175, 72, 199, 203)),
                  child: const Text(
                    'Create Alarm',
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {
                    int hour;
                    int minutes;
                    hour = int.parse(hourController.text);
                    minutes = int.parse(minuteController.text);
                    // creating alarm after converting hour
                    // and minute into integer
                    FlutterAlarmClock.createAlarm(hour, minutes);
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 65),
              child: TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Color.fromARGB(175, 72, 199, 203)),
                onPressed: () {
                  // show alarm
                  FlutterAlarmClock.showAlarms();
                },
                child: const Text(
                  'Show Alarms',
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        )),
        SingleChildScrollView(
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 45),
                child: Container(
                  margin: const EdgeInsets.all(25),
                  child: TextButton(
                    style: TextButton.styleFrom(
                          backgroundColor: Color.fromARGB(175, 72, 199, 203)),
                      child: const Text(
                        'Create timer',
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {
                        int minutes;
                        minutes = int.parse(minuteController.text);

                        // create timer
                        FlutterAlarmClock.createTimer(minutes);
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AboutDialog(
                                children: [
                                  Center(
                                    child: Text("Timer is set",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold)),
                                  )
                                ],
                              );
                            });
                      }),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 65),
                child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Color.fromARGB(175, 72, 199, 203)), 
                  onPressed: () {
                    // show timers
                    FlutterAlarmClock.showTimers();
                  },
                  child: Text(
                    "Show Timers",
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
        ),
      ])),
    );
  }
}
