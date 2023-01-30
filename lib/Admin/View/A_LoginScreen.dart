import 'package:flutter/material.dart';
import 'package:smart_study/Admin/Utils/Resources/fonts.dart';
import 'package:smart_study/Admin/Utils/Routes/RoutesName.dart';

import '../Utils/Resources/Roundbtn.dart';
import '../Utils/Resources/colors.dart';

class A_LoginScreen extends StatefulWidget {
  const A_LoginScreen({Key? key}) : super(key: key);

  @override
  State<A_LoginScreen> createState() => _A_LoginScreenState();
}

class _A_LoginScreenState extends State<A_LoginScreen> {
  var size, height, width;
  TextEditingController emailid = TextEditingController();
  TextEditingController Password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    //size of the window
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Stack(
          children: [
            Container(
              height: height * 0.4,
              width: width * 1,
              color: Colors.purple,
              child: Image.network(
                  "https://samriddhischool.edu.np/wp-content/uploads/2019/07/sambriddhi1-1050x549.png",
                  fit: BoxFit.cover),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 250),
              child: Container(
                height: height * 0.7,
                width: width * 1,
                decoration: BoxDecoration(
                  color: Colors.white,
                  // border: Border.all(color: Appcolors.appcolor),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25.0),
                      topRight: Radius.circular(25.0)),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Welcome Back",
                        style: TextStyle(
                          fontFamily: PoppinssemiBolds,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextField(
                        controller: emailid,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey)),
                          labelText: "Email",
                          // labelStyle:TextStyle(color: Colors.black),
                          hintText: "Enter Email Id",
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextField(
                        controller: Password,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey)),
                          labelText: "Password",
                          hintText: "Enter Password",
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      RoundBtn(
                        title: "Log In",
                        ontap: () {
                          print('clicked');
                        },

                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Center(
                            child: Text(
                          "Forgot your password?",
                          style: TextStyle(
                              fontSize: 15, fontFamily: Poppinsregulars),
                        )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 55, top: 30),
                        child: Row(
                          children: [
                            Text(
                              "Don't have account? ",
                              style:
                                  TextStyle(fontSize: 17, color: Colors.grey),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, RoutesName.AdminSignupScreen);
                              },
                              child: Text(
                                "SIGN UP",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.lightBlue),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
