import 'package:flutter/material.dart';
import 'package:test_app/portSelect_page.dart';
import 'package:test_app/serialMonitor_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentPage = 0;

  List<Widget> pages = [
    portSelect(),
    serialMonitor(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentPage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPage,
        onTap: (value) {
          setState(
            () {
              currentPage = value;
            },
          );
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.usb,
            ),
            label: "USB-Port",
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.monitor_heart,
              ),
              label: "Monitor"),
        ],
      ),
    );
  }
}
