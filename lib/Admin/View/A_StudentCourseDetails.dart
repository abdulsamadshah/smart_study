import 'package:flutter/material.dart';
import 'package:smart_study/Admin/Utils/Resources/Roundbtn.dart';
import 'package:smart_study/Admin/Utils/Routes/RoutesName.dart';

import '../Utils/Resources/Navigationbar.dart';
import '../Utils/Resources/Utils.dart';
import '../Utils/Resources/colors.dart';
import 'package:get/get.dart';
import '../Utils/Resources/fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../View_Model/A_StudentProfile_Controller.dart';
import 'dart:io';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../View_Model/A_StudentprofileDetailsController.dart';
class A_StudentCourseDetails extends StatefulWidget {
  const A_StudentCourseDetails({Key? key}) : super(key: key);

  @override
  State<A_StudentCourseDetails> createState() => A_StudentCourseDetailsState();
}

class A_StudentCourseDetailsState extends State<A_StudentCourseDetails> {



  final controllers=Get.put(StudentProfileDetailController());
  var pickImage = ImagePicker();
  File? updateimage;
  bool? EstudentNamevenable;
  @override
  Widget build(BuildContext context) {
    print(controllers.EstudentNamevenable.value);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        // elevation: 0,
        title: Text("Course Details"),
        backgroundColor: Appcolors.tbcolor,
        actions: [
          InkWell(
            onTap: (){
              Navigator.pushNamed(context, RoutesName.A_AllStudentScreen);
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 15,right: 15),
              child: Text("Profile",style: TextStyle(fontSize: 17,fontFamily: PoppinssemiBolds),),
            ),
          ),
        ],
      ),
      // drawer: Navigationbar(),
      body: Container(
        height: Get.height * 1,
        width: Get.height * 1,
        child: SingleChildScrollView(

          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset("assets/images/profileui.png",width: Get.width*1,),
                  Padding(
                    padding: const EdgeInsets.only(top: 30, left: 20),
                    child: Container(
                      child: Row(
                        children: [
                          Container(
                            width: 80.0,
                            height: 80.0,

                            decoration: BoxDecoration(
                              color: const Color(0xff7c94b6),
                              image: DecorationImage(
                                image: NetworkImage(
                                    'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius:
                              BorderRadius.all(Radius.circular(50.0)),
                              border: Border.all(
                                color: Colors.white,
                                width: 2.0,
                              ),
                            ),
                            // child: Text("Samad"),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 12, top: 15),
                            child: Container(
                              height: 70.0,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Smart Learning",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: Poppinsbolds,
                                        fontSize: 19),
                                  ),
                                  Text(
                                    "Abdul Samad",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: Poppinsregulars,
                                        fontSize: 16),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10,right: 10),
                child: Container(
                  width: Get.width*0.9,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 0),
                        child: Row(
                          children: [
                            FaIcon(
                              FontAwesomeIcons.computer,
                              size: 17,
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text(
                              "Course Name",
                              style:
                              TextStyle(),
                            ),
                          ],
                        ),
                      ),


                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 4),
                          child: SizedBox(
                            height: 30,
                            child: Obx((){
                              return  TextField(
                                controller: controllers.SCourseName,
                                enabled: controllers.EstudentNamevenable.value,
                                keyboardType: TextInputType.text,

                              );
                            }

                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),


              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10,right: 10),
                child: Container(
                  width: Get.width*0.9,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 0),
                        child: Row(
                          children: [
                            FaIcon(
                              FontAwesomeIcons.computer,
                              size: 17,
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text(
                              "Course Price",
                              style:
                              TextStyle(),
                            ),
                          ],
                        ),
                      ),


                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 4),
                          child: SizedBox(
                            height: 30,
                            child: Obx((){
                              return TextField(
                                controller: controllers.SCoursePrice,
                                enabled: controllers.EstudentEmailenable.value,
                                keyboardType: TextInputType.number,



                              );
                            }

                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),


              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10,right: 10),
                child: Container(
                  width: Get.width*0.9,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 0),
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
                              "Discount Amount",
                              style:
                              TextStyle(),
                            ),
                          ],
                        ),
                      ),


                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 4),
                          child: SizedBox(
                            height: 30,
                            child: Obx((){
                              return TextField(
                                controller: controllers.SDiscount,
                                enabled: controllers.EstudentMobenable.value,
                                keyboardType: TextInputType.number,
                              );
                            }

                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10,right: 10),
                child: Container(
                  width: Get.width*0.9,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 0),
                        child: Row(
                          children: [
                            FaIcon(
                              FontAwesomeIcons.calendar,
                              size: 17,
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text(
                              "Course Start Date",
                              style:
                              TextStyle(),
                            ),
                          ],
                        ),
                      ),


                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 0),
                          child: SizedBox(
                            height: 40,
                            child: Obx((){
                              return TextField(
                                // controller: controllers.EstudentAddress,
                                enabled: controllers.EstudentAddressenable.value,
                                maxLines: 5,
                                keyboardType: TextInputType.text,



                              );
                            }

                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10,right: 10),
                child: Container(
                  width: Get.width*0.9,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 0),
                        child: Row(
                          children: [
                            FaIcon(
                              FontAwesomeIcons.calendar,
                              size: 17,
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text(
                              "Course End Date",
                              style:
                              TextStyle(),
                            ),
                          ],
                        ),
                      ),


                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 0),
                          child: SizedBox(
                            height: 40,
                            child: Obx((){
                              return TextField(
                                // controller: controllers.EstudentAddress,
                                enabled: controllers.EstudentAddressenable.value,
                                maxLines: 5,
                                keyboardType: TextInputType.text,



                              );
                            }

                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10,right: 10),
                child: Container(
                  width: Get.width*0.9,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 0),
                        child: Row(
                          children: [
                            FaIcon(
                              FontAwesomeIcons.moneyCheckDollar,
                              size: 17,
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text(
                              "Paid Amount",
                              style:
                              TextStyle(),
                            ),
                          ],
                        ),
                      ),


                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 0),
                          child: SizedBox(
                            height: 40,
                            child: Obx((){
                              return TextField(
                                controller: controllers.SPaidAmount,
                                enabled: controllers.EstudentAddressenable.value,
                                maxLines: 5,
                                keyboardType: TextInputType.number,



                              );
                            }

                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),



              SizedBox(
                height: 25,
              ),
              Obx(()=>controllers.EstudentNamevenable.value==false ?
              RoundBtn(title: "Edit Profile",ontap: (){

                print("Clicked");
                controllers.EstudentNamevenable.value=true;
                controllers.EstudentEmailenable.value=true;
                controllers.EstudentMobenable.value=true;
                controllers.EstudentAddressenable.value=true;
                print(controllers.EstudentNamevenable.value);



              },loading: false,):

              RoundBtn(title: "Save",ontap: (){

                print("Clicked");
                controllers.EstudentNamevenable.value=false;
                controllers.EstudentEmailenable.value=false;
                controllers.EstudentMobenable.value=false;
                controllers.EstudentAddressenable.value=false;
                print(controllers.EstudentNamevenable.value);



              },loading: false,),
              ),




            ],
          ),
        ),


      ),);
  }

  void showuserimage(context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            content: Container(
              height: Get.height*0.4,
              child: Column(
                children: [
                  Image.network("https://static.toiimg.com/photo/68944342.cms",height: 250,),

                  Obx(()=>controllers.Userprofileimageenable==false?
                  GestureDetector(
                    onTap: (){
                      updateprofiledialog(context);
                      controllers.Userprofileimageenable.value=true;
                    },
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: Appcolors.appcolor,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Center(child: Text("Edit Profile Image",style: TextStyle(color: Colors.white,fontFamily: PoppinssemiBolds),)),
                    ),
                  ): GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: Appcolors.appcolor,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Center(child: Text("Save",style: TextStyle(color: Colors.white,fontFamily: PoppinssemiBolds,fontSize: 23),)),
                    ),
                  ),
                  )

                ],
              ),
            ),
          );
        });
  }
  void updateprofiledialog(context) {
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
        updateimage = File(pickfile.path);
      } else {
        Utils.showflushbar("No Image Selected", context);
      }
    });
  }
  Future getImageCamera() async {
    final pickfile = await pickImage.pickImage(source: ImageSource.camera);
    setState(() {
      if (pickfile != null) {
        updateimage = File(pickfile.path);
      } else {
        Utils.showflushbar("No Image Selected", context);
      }
    });
  }

}
