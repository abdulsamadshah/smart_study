import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:another_flushbar/flushbar.dart';

import '';

class Utils {
  //he is a simple toast
  void myfluttertoast(String message) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.deepPurple,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  //he is best design toast like a proffessional
  static void showflushbar(String message, BuildContext context) {
    Flushbar(
      forwardAnimationCurve: Curves.decelerate,
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      padding: EdgeInsets.all(15),
      message: message,
      borderRadius: BorderRadius.circular(10.0),
      duration: Duration(seconds: 3),
      flushbarPosition: FlushbarPosition.TOP,
      backgroundColor: Colors.deepPurple,
      reverseAnimationCurve: Curves.easeInOut,
      positionOffset: 20,
      icon: Icon(
        Icons.error,
        size: 28,
        color: Colors.white,
      ),
    )..show(context);
  }

  //he is very best design toast like a proffessional
  static snacbar(String message, BuildContext context) {
    return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(backgroundColor: Colors.deepPurple, content: Text(message)));
  }
}
