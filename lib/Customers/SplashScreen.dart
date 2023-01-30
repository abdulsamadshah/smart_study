import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:smart_study/Admin/Utils/Routes/RoutesName.dart';

import '../Admin/Utils/Resources/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 3),
        () => Navigator.pushNamed(context, RoutesName.AdminDashboardScreen));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        alignment: Alignment.center,
        children: [
          Center(
              child: Container(
                  child: Image.asset(
            "assets/images/SmartStudyLogo.png",
            height: 200,
            width: 200,
          ))),
          Positioned(
              bottom: 50,
              width: 30,
              child: CupertinoActivityIndicator(
                color: Appcolors.appcolor,
              ))
        ],
      ),
    );
  }
}
