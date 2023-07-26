import 'dart:async';

import 'package:flutter/material.dart';
import 'package:yuslih/dash.dart';
import 'package:yuslih/login.dart';
import 'package:yuslih/personalinformation.dart';
import 'package:yuslih/userhome.dart';

void main() {
  runApp(const Yuslih());
}

class Yuslih extends StatefulWidget {
  const Yuslih({Key? key}) : super(key: key);

  @override
  State<Yuslih> createState() => _YuslihState();
}

class _YuslihState extends State<Yuslih> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }
}
class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                Login(),
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child:Image.asset("assets/images/logo.png")
    );
  }
}
Widget build(BuildContext context) {
  return  Scaffold(

  );
}
