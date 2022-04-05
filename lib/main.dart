import 'package:flutter/material.dart';

import 'DrawerMaker.dart';

// ignore_for_file: prefer_const_constructors
void main() => runApp(MaterialApp(home: MyApp()));

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int selectedindex = 0;
  PageController pagecontroller = PageController();
  void onTapped(int index) {
    setState(() {
      selectedindex = index;
    });
    pagecontroller.animateToPage(index,
        duration: const Duration(milliseconds: 1000),
        curve: Curves.easeInOutQuad);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 28, 36, 52),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 33, 45, 59),
          title: Text(
            "Note Maker",
            style: TextStyle(
              fontFamily: "Roboto",
              color: Colors.white,
            ),
          ),
        ),
        body: PageView(
          controller: pagecontroller,
          onPageChanged: (page) {
            setState(() {
              selectedindex = page;
            });
          },
          children: [
            Container(
              color: Colors.redAccent,
            ),
            Container(
              color: Colors.blue,
            ),
            Container(
              color: Colors.amber,
            ),
          ],
        ),
        drawer: DrawerMaker(),
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.white,
          selectedItemColor: Colors.blue,
          backgroundColor: const Color.fromARGB(255, 33, 45, 59),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.archive), label: "Books"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Account")
          ],
          currentIndex: selectedindex,
          onTap: onTapped,
        ));
  }
}
