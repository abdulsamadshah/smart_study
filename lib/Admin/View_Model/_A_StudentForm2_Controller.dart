import 'package:flutter/material.dart';
import 'package:get/get.dart';

class A_StudentForm2Controller extends GetxController {

  final GlobalKey<FormState> studentform2key = GlobalKey<FormState>();
  TextEditingController coursename = TextEditingController();
  TextEditingController courseprice = TextEditingController();
  TextEditingController coursediscount = TextEditingController();
  TextEditingController coursestartdate = TextEditingController();
  TextEditingController courseenddate = TextEditingController();
  TextEditingController coursepaidamount = TextEditingController();

  RxString coursevalue = "".obs;
  RxString startcoursedata="".obs;
  RxString endcoursedata="".obs;


  List<String> options = ['Data Science',
    'Big Data Engineering',
    'Data Analytics',
    'Software Development',
    'Cyber Security',
    'Web Development'];


  //setter and getter method to set and get data
  void set setcoursname(String coursenames) {
    coursevalue.value = coursenames;
    print("Course Name" + coursenames.toString());
  }

  String get getcoursename {
    return coursevalue.value;
  }


  Rx<List<String>> selectedOptionList = Rx<List<String>>([]);
  var selectedOption = ''.obs;

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
    coursename.dispose();
    courseprice.dispose();
    coursediscount.dispose();
    coursestartdate.dispose();
    courseenddate.dispose();
    coursepaidamount.dispose();
  }
}
