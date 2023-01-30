import 'package:flutter/material.dart';

import '../Utils/Resources/Roundbtn.dart';
import '../Utils/Resources/Utils.dart';
import '../Utils/Resources/colors.dart';
import '../Utils/Resources/fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:io';
import '../Utils/Resources/validator.dart';
import '../Utils/Routes/RoutesName.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../View_Model/studentform1_controller.dart';

class A_StudentForm1 extends StatefulWidget {
  const A_StudentForm1({Key? key}) : super(key: key);

  @override
  State<A_StudentForm1> createState() => _A_StudentForm1State();
}

class _A_StudentForm1State extends State<A_StudentForm1> {
  var size, height, width;

  final studentcontroller=Get.put(Studentform1_controller());
  var pickImage = ImagePicker();
  File? image;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      body: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 60),
            child: Container(
              height: Get.height *1,
              child: Form(
                key:studentcontroller.studentform1key,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Center(
                          child: Text(
                        "Student Details",
                        style: TextStyle(fontFamily: PoppinssemiBolds, fontSize: 23),
                      )),

                      Container(
                        height: Get.height * 0.841,
                        decoration: BoxDecoration(
                          // border: Border.all(color: Colors.grey,width: 2),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25.0),
                              topRight: Radius.circular(25.0)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 12, right: 12, top: 0),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 20,
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
                                            "Enter Student Name",
                                            style:
                                                TextStyle(fontFamily: Poppinsregulars),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 4),
                                      child: SizedBox(
                                        height: 55,
                                        child: TextFormField(
                                          validator: Validator.validateName,
                                          keyboardType: TextInputType.text,
                                          controller: studentcontroller.cname,
                                          decoration: InputDecoration(
                                            hintText: "Enter Name",
                                            border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                                borderSide:
                                                    BorderSide(color: Colors.grey)),
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
                                            "Enter Student Email",
                                            style:
                                                TextStyle(fontFamily: Poppinsregulars),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 4),
                                      child: Container(
                                        height: 55,
                                        child: TextFormField(
                                          validator: Validator.validateEmail,
                                          keyboardType: TextInputType.emailAddress,
                                          controller:studentcontroller.cemail,
                                          decoration: InputDecoration(
                                            hintText: "Enter Email",
                                            border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                                borderSide:
                                                    BorderSide(color: Colors.grey)),
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
                                            "Enter Student Mobile Number",
                                            style:
                                                TextStyle(fontFamily: Poppinsregulars),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 4),
                                      child: Container(
                                        height: 55,
                                        child: TextFormField(
                                          validator: Validator.validateMobile,
                                          keyboardType: TextInputType.phone,
                                          controller: studentcontroller.cmobilenumber,
                                          decoration: InputDecoration(
                                            hintText: "Enter Mobile No",
                                            border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                                borderSide:
                                                    BorderSide(color: Colors.grey)),
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
                                            FontAwesomeIcons.locationDot,
                                            size: 17,
                                          ),
                                          SizedBox(
                                            width: 3,
                                          ),
                                          Text(
                                            "Enter Student Address",
                                            style:
                                                TextStyle(fontFamily: Poppinsregulars),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 4),
                                      child: Container(
                                        height: 55,
                                        child: TextFormField(
                                          validator: Validator.validateAddress,
                                          keyboardType: TextInputType.text,
                                          controller: studentcontroller.caddress,
                                          decoration: InputDecoration(
                                            hintText: "Enter Address",
                                            border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                                borderSide:
                                                    BorderSide(color: Colors.grey)),
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
                                            FontAwesomeIcons.locationDot,
                                            size: 17,
                                          ),
                                          SizedBox(
                                            width: 3,
                                          ),
                                          Text(
                                            "Enter Pin code",
                                            style:
                                                TextStyle(fontFamily: Poppinsregulars),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 4),
                                      child: Container(
                                        height: 55,
                                        child: TextFormField(
                                          validator: Validator.validatePincode,
                                          keyboardType: TextInputType.phone,
                                          controller: studentcontroller.cpincode,
                                          decoration: InputDecoration(
                                            hintText: "Enter Pin code",
                                            border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                                borderSide:
                                                    BorderSide(color: Colors.grey)),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 15,),
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
                                              studentcontroller.uploadlogo.value="Upload";

                                            },
                                            child: Stack(
                                              children: [
                                                Container(
                                                  height: 50,
                                                  width: Get.width* 0.9,
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
                                                    "${studentcontroller.uploadlogo.value =="Upload Logo" ? "Upload Logo" :studentcontroller.uploadedlogo.value}",
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
                                  ],
                                ),
                              ),
                              // SizedBox(
                              //   height: 15,
                              // ),
                              SizedBox(
                                height: 30,
                              ),
                              RoundBtn(
                                title: "Next",
                                ontap: () {
                                  if(studentcontroller.studentform1key.currentState!.validate()){

                                  }else{
                                    Navigator.pushNamed(
                                        context, RoutesName.A_StudentForm2);
                                  }

                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

    );
  }

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
