import 'package:flutter/material.dart';
import 'package:get/get.dart';
class StudentProfileController extends GetxController{

  TextEditingController EstudentName=TextEditingController();
  TextEditingController EstudentEmail=TextEditingController();
  TextEditingController EstudentMob=TextEditingController();
  TextEditingController EstudentAddress=TextEditingController();

  RxBool EstudentNamevenable=false.obs;
  RxBool EstudentEmailenable=false.obs;
  RxBool EstudentMobenable=false.obs;
  RxBool EstudentAddressenable=false.obs;
  RxBool Userprofileimageenable=false.obs;




  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    EstudentName.text = "Abdul Samad";
    EstudentMob.text = "7249303582";
    EstudentEmail.text = "asdevelopershah@gmail.com";
    EstudentAddress.text = "Hanuman Mandi Ekta Nagar Gass Road Nallasopara West";
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
    EstudentName.dispose();
    EstudentAddress.dispose();
    EstudentEmail.dispose();
    EstudentMob.dispose();
  }


}