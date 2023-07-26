import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yuslih/pendingworks.dart';
import 'package:yuslih/schedule.dart';
import 'package:yuslih/techhome.dart';
import 'package:yuslih/techmywork.dart';
import 'package:yuslih/techupcomming.dart';
import 'package:yuslih/userhome.dart';

import 'favorate.dart';
import 'finder.dart';

class DashBoard2 extends StatefulWidget {
  const DashBoard2({Key? key}) : super(key: key);

  @override
  State<DashBoard2> createState() => _DashBoard2State();
}

class _DashBoard2State extends State<DashBoard2> {
  var Pages = [
    Techhome(),
    Mywork(),
    Upcomming(),
    Pending(),


  ];


  int c = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:Pages[c] ,
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Color(0x3f54d1),
        color: Color(0xff3F54D1),
        items: [
          CurvedNavigationBarItem(
              child: Icon(
                Icons.home,
                color: Color(0xff4FE0B5),
              ),
              label: 'Home',
              labelStyle: TextStyle(color: Color(0xff4FE0B5))),
          CurvedNavigationBarItem(
              child: Icon(Icons.date_range_outlined, color: Color(0xff4FE0B5)),
              label: 'My work',
              labelStyle: TextStyle(color: Color(0xff4FE0B5))),
          CurvedNavigationBarItem(
              child: Icon(Icons.calendar_month_sharp, color: Color(0xff4FE0B5)),
              label: 'upcomming',
              labelStyle: TextStyle(color: Color(0xff4FE0B5))),

        ],
        onTap: (index) {
          setState(() {
            c = index;
          });
          // Handle button tap
        },
      ),
    );
  }
}
