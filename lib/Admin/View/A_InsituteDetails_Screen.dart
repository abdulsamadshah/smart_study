import 'package:flutter/material.dart';
import 'package:smart_study/Admin/Utils/Resources/Roundbtn.dart';
import 'package:smart_study/Admin/Utils/Resources/Utils.dart';
import 'package:smart_study/Admin/Utils/Resources/colors.dart';
import 'package:smart_study/Admin/Utils/Resources/fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smart_study/Admin/Utils/Routes/RoutesName.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:get/get.dart';

import '../View_Model/A_InstituteDetailsController.dart';

class A_InstituteDetailsScreen extends StatefulWidget {
  const A_InstituteDetailsScreen({Key? key}) : super(key: key);

  @override
  State<A_InstituteDetailsScreen> createState() => A_sInstituteDetailsScreen();
}

class A_sInstituteDetailsScreen extends State<A_InstituteDetailsScreen> {
  var size, height, width;
  var pickImage = ImagePicker();
  File? image;

  final controller=Get.put(A_InstituteDetailsController());

  void selectlogodialog(context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            content: Container(
              height: Get.height*0.220,
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      getImageCamera();
                      Navigator.pop(context);
                    },
                    child: ListTile(
                      leading: Icon(Icons.camera),
                      title: Text("Camera"),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      getImageGallery();
                      Navigator.pop(context);
                    },
                    child: ListTile(
                      leading: Icon(Icons.photo),
                      title: Text("Gallery"),
                    ),
                  ),

                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: ListTile(
                      leading: Icon(Icons.cancel),
                      title: Text("Cancel"),
                    ),
                  ),

                ],
              ),
            ),
          );
        });
  }

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
                              "Enter Institute Name",
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
                            controller: controller.institutename,
                            decoration: InputDecoration(
                              hintText: "Institute Name",
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
                              "Enter Address",
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
                            controller: controller.instituteaddress,
                            decoration: InputDecoration(
                              hintText: "Address",
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
                              FontAwesomeIcons.locationPin,
                              size: 17,
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text(
                              "Enter Pincode",
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
                            controller: controller.institutepincode,
                            decoration: InputDecoration(
                              hintText: "Pincode",
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
                              "Enter Registeration Number",
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
                            controller: controller.instituteregisterationnumber,
                            decoration: InputDecoration(
                              hintText: "Registeration Number",
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
                              FontAwesomeIcons.upload,
                              color: Colors.grey,
                              size: 17,
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text(
                              "Upload Institute Logo",
                              style: TextStyle(fontFamily: Poppinsregulars),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      InkWell(
                        onTap: () {
                            selectlogodialog(context);
                            controller.uploadlogo.value="Upload";

                        },
                        child: Stack(
                          children: [
                            Container(
                              height: 50,
                              width: 320,
                              child: Container(
                                width: 50.0,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: const Color(0xfffff),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50.0)),
                                  border: Border.all(
                                    color: Colors.grey,
                                    width: 2.0,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 230),
                                  child: Center(
                                      child: FaIcon(FontAwesomeIcons.upload)),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 15, right: 10, top: 15),
                              child: Text(
                                    "${controller.uploadlogo.value =="Upload Logo" ? "Upload Logo" :controller.uploadedlogo.value}",
                                    style: TextStyle(
                                        fontFamily: Poppinsregulars,
                                        color: Appcolors.appcolor),
                                  ),
                            ),
                          ],
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
                    Navigator.pushNamed(context, RoutesName.AdminDashboardScreen);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future getImageGallery() async {
    final pickfile = await pickImage.pickImage(source: ImageSource.gallery);
    setState(() {
      if (pickfile != null) {
        image = File(pickfile.path);
      } else {
        Utils.showflushbar("No Image Selected", context);
      }
    });
  }

  Future getImageCamera() async {
    final pickfile = await pickImage.pickImage(source: ImageSource.camera);
    setState(() {
      if (pickfile != null) {
        image = File(pickfile.path);
      } else {
        Utils.showflushbar("No Image Selected", context);
      }
    });
  }
}
