import 'package:get/get.dart';
import 'package:flutter/material.dart';
class A_SignupScreen_Controller extends GetxController{

  TextEditingController firstname = TextEditingController();
  TextEditingController lastname = TextEditingController();
  TextEditingController mobileno = TextEditingController();
  TextEditingController emailaddress = TextEditingController();
  TextEditingController password = TextEditingController();

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
    firstname.dispose();
    lastname.dispose();
    mobileno.dispose();
    emailaddress.dispose();
    password.dispose();
  }
}