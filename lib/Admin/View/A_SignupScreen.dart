import 'package:flutter/material.dart';
import 'package:smart_study/Admin/Utils/Resources/Roundbtn.dart';
import 'package:smart_study/Admin/Utils/Resources/fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smart_study/Admin/Utils/Routes/RoutesName.dart';
import 'package:get/get.dart';
import '../View_Model/A_SignupScreen_Controller.dart';

class A_SignupScreen extends StatefulWidget {
  const A_SignupScreen({Key? key}) : super(key: key);

  @override
  State<A_SignupScreen> createState() => _A_SignupScreenState();
}

class _A_SignupScreenState extends State<A_SignupScreen> {
  var size, height, width;

  final controller=Get.put(A_SignupScreen_Controller());

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            child: Column(
              children: [
                SizedBox(
                  height: 80,
                ),
                Center(
                    child: Text(
                  "Welcome To Smart Study",
                  style: TextStyle(fontFamily: PoppinssemiBolds, fontSize: 20),
                )),
                SizedBox(
                  height: 30,
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Row(
                          children: [
                            FaIcon(
                              FontAwesomeIcons.user,
                              size: 17,
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text(
                              "Enter First Name",
                              style: TextStyle(fontFamily: Poppinsregulars),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 4),
                        child: Container(
                          height: 55,
                          child: TextField(
                            controller: controller.firstname,
                            decoration: InputDecoration(
                              // hintText: "Enter Username",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide: BorderSide(color: Colors.grey)),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Row(
                          children: [
                            FaIcon(
                              FontAwesomeIcons.user,
                              size: 17,
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text(
                              "Enter Last Name",
                              style: TextStyle(fontFamily: Poppinsregulars),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 4),
                        child: Container(
                          height: 55,
                          child: TextField(
                            controller: controller.lastname,
                            decoration: InputDecoration(
                              // hintText: "Enter Username",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide: BorderSide(color: Colors.grey)),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Row(
                          children: [
                            FaIcon(
                              FontAwesomeIcons.mobileScreen,
                              size: 17,
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text(
                              "Enter Mobile No",
                              style: TextStyle(fontFamily: Poppinsregulars),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 4),
                        child: Container(
                          height: 55,
                          child: TextField(
                            controller: controller.mobileno,
                            decoration: InputDecoration(
                              // hintText: "Enter Mobile No",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide: BorderSide(color: Colors.grey)),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Row(
                          children: [
                            FaIcon(
                              FontAwesomeIcons.envelope,
                              size: 17,
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text(
                              "Enter Email Address",
                              style: TextStyle(fontFamily: Poppinsregulars),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 4),
                        child: Container(
                          height: 55,
                          child: TextField(
                            controller: controller.emailaddress,
                            decoration: InputDecoration(
                              // hintText: "Enter Mobile No",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide: BorderSide(color: Colors.grey)),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Row(
                          children: [
                            FaIcon(
                              FontAwesomeIcons.lock,
                              color: Colors.grey,
                              size: 17,
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text(
                              "Enter Password",
                              style: TextStyle(fontFamily: Poppinsregulars),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 4),
                        child: Container(
                          height: 55,
                          child: TextField(
                            controller: controller.password,
                            decoration: InputDecoration(
                              // hintText: "Enter Mobile No",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide: BorderSide(color: Colors.grey)),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                RoundBtn(
                  title: "Proceed Ahead",
                  ontap: () {
                    Navigator.pushNamed(
                        context, RoutesName.InstituteDetailsScreen);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
