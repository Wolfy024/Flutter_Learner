// import 'package:flutter/material.dart';
//
// class BottomNavigationBarMaker extends StatefulWidget {
//   const BottomNavigationBarMaker({Key? key}) : super(key: key);
//
//   @override
//   State<BottomNavigationBarMaker> createState() =>
//       _BottomNavigationBarMakerState();
// }
//
// class _BottomNavigationBarMakerState extends State<BottomNavigationBarMaker> {
//   static int selectedindex = 0;
//   PageController pagecontroller = PageController();
//   void onTapped(int index) {
//     setState(() {
//       selectedindex = index;
//     });
//     pagecontroller.animateToPage(index,
//         duration: const Duration(milliseconds: 1000),
//         curve: Curves.easeInQuint);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return
