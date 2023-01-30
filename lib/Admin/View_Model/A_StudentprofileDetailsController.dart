import 'package:flutter/material.dart';
import 'package:get/get.dart';
class StudentProfileDetailController extends GetxController{

  TextEditingController SCourseName=TextEditingController();
  TextEditingController SCoursePrice=TextEditingController();
  TextEditingController SDiscount=TextEditingController();
  TextEditingController SPaidAmount=TextEditingController();

  RxBool EstudentNamevenable=false.obs;
  RxBool EstudentEmailenable=false.obs;
  RxBool EstudentMobenable=false.obs;
  RxBool EstudentAddressenable=false.obs;
  RxBool Userprofileimageenable=false.obs;




  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    SCourseName.text = "Software Development";
    SCoursePrice.text = "5000";
    SDiscount.text = "10%";
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    SCourseName.dispose();
    SCoursePrice.dispose();
    SDiscount.dispose();
    SPaidAmount.dispose();
  }


}