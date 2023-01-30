import 'package:flutter/material.dart';
import 'package:get/get.dart';

class A_InstituteDetailsController extends GetxController {
  TextEditingController institutename = TextEditingController();
  TextEditingController instituteaddress = TextEditingController();
  TextEditingController institutepincode = TextEditingController();
  TextEditingController instituteregisterationnumber = TextEditingController();

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
    institutename.dispose();
    instituteaddress.dispose();
    institutepincode.dispose();
    instituteregisterationnumber.dispose();


  }
}
