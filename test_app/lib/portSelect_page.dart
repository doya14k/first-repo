import 'package:flutter/material.dart';

class portSelect extends StatefulWidget {
  const portSelect({super.key});

  @override
  State<portSelect> createState() => _portSelectState();
}

class _portSelectState extends State<portSelect> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 140, 207, 238),
        title: Text("Port-Select"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: EdgeInsets.all(40),
            color: Colors.blueAccent,
            child: Icon(Icons.usb),
          ),
          Container(
            margin: EdgeInsets.all(20),
            color: Colors.red,
            child: Center(
              child: Text(
                "Test1",
                style: TextStyle(
                  fontFamily: 'ErasBoldITC',
                  fontSize: 50,
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(40),
            color: Colors.amber,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: Icon(
                    Icons.settings,
                    size: 50,
                  ),
                ),
                Container(
                  child: Text(
                    "Test1",
                    style: TextStyle(
                      fontFamily: 'ErasBoldITC',
                      fontSize: 50,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
