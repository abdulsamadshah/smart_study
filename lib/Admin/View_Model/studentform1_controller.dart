import 'package:get/get.dart';
import 'package:flutter/material.dart';
class Studentform1_controller extends GetxController{


  final GlobalKey<FormState> studentform1key = GlobalKey<FormState>();
  TextEditingController cname = TextEditingController();
  TextEditingController cemail = TextEditingController();
  TextEditingController cmobilenumber = TextEditingController();
  TextEditingController caddress = TextEditingController();
  TextEditingController cpincode = TextEditingController();


  RxString coursevalue = "".obs;
  RxBool insititutelogouploadedtext=false.obs;
  RxString uploadlogo="Upload Logo".obs;
  RxString uploadedlogo="Uploaded Logo".obs;

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
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
    cname.dispose();
    cemail.dispose();
    cmobilenumber.dispose();
    caddress.dispose();
    cpincode.dispose();

  }



}