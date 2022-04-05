//ignore_for_file:prefer_const_constructors
import 'package:flutter/material.dart';

class DrawerMaker extends StatelessWidget {
  const DrawerMaker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: Color.fromARGB(255, 28, 36, 52),
        child: ListView(children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Color.fromARGB(255, 33, 45, 59)),
            child: Text("Drawer Header"),
          ),
          ListTile(
              title: Text(
                "Item1",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.pop(context);
              }),
          ListTile(
              title: Text(
                "Item2",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.pop(context);
              }),
          ListTile(
              title: Text(
                "Item3",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.pop(context);
              })
        ]));
  }
}
