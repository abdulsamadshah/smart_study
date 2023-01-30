import 'package:flutter/material.dart';

import '../Utils/Resources/Drowdownwidget.dart';
import '../Utils/Resources/Roundbtn.dart';
import '../Utils/Resources/colors.dart';
import '../Utils/Resources/fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../Utils/Resources/validator.dart';
import '../View_Model/_A_StudentForm2_Controller.dart';
import 'package:multiselect/multiselect.dart';
import '../Utils/Routes/RoutesName.dart';
import 'package:get/get.dart';

class A_StudentForm2 extends StatefulWidget {
  const A_StudentForm2({Key? key}) : super(key: key);

  @override
  State<A_StudentForm2> createState() => _A_StudentForm2();
}

class _A_StudentForm2 extends State<A_StudentForm2> {
  var size, height, width;

  final studentcontroller = Get.put(A_StudentForm2Controller());

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 60),
          child: Form(
            key: studentcontroller.studentform2key,
            child: Column(
              children: [
                Center(
                    child: Text(
                  "Student Course Details",
                  style: TextStyle(fontFamily: PoppinssemiBolds, fontSize: 23),
                )),
                SizedBox(
                  height: 0,
                ),
                Container(
                  height: height * 0.900,
                  decoration: BoxDecoration(
                    // border: Border.all(color: Colors.grey, width: 2),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25.0),
                        topRight: Radius.circular(25.0)),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 12, right: 12, top: 10),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Row(
                                  children: [
                                    // FaIcon(
                                    //   FontAwesomeIcons.computer,
                                    //   size: 17,
                                    // ),
                                    Icon(
                                      Icons.computer,
                                      size: 17,
                                    ),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    Text(
                                      "Select Course",
                                      style: TextStyle(
                                          fontFamily: Poppinsregulars),
                                    ),
                                  ],
                                ),
                              ),

                              /*
                              //simple select one item dropdown
                              DropdownWidget(),
                               */

                              DropDownMultiSelect(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      borderSide:
                                          BorderSide(color: Colors.grey)),
                                ),
                                options: studentcontroller.options,
                                whenEmpty: 'Select Course',
                                onChanged: (value) {
                                  studentcontroller.selectedOptionList.value =
                                      value;
                                  studentcontroller.selectedOption.value = "";
                                  studentcontroller.selectedOptionList.value
                                      .forEach((element) {
                                    studentcontroller.selectedOption.value =
                                        studentcontroller.selectedOption.value + " " + element;
                                  });
                                },
                                selectedValues:
                                    studentcontroller.selectedOptionList.value,
                              ),
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
                                    // FaIcon(
                                    //   FontAwesomeIcons.envelope,
                                    //   size: 17,
                                    // ),
                                    Icon(
                                      Icons.computer,
                                      size: 17,
                                    ),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    Text(
                                      "Enter Course Price",
                                      style: TextStyle(
                                          fontFamily: Poppinsregulars),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 4),
                                child: Container(
                                  height: 55,
                                  child: TextFormField(
                                    validator: Validator.courseprice,
                                    keyboardType: TextInputType.number,
                                    controller: studentcontroller.courseprice,
                                    decoration: InputDecoration(
                                      hintText: "Course Price",
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
                                      FontAwesomeIcons.user,
                                      size: 17,
                                    ),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    Text(
                                      "Enter Customer Discount",
                                      style: TextStyle(
                                          fontFamily: Poppinsregulars),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 4),
                                child: Container(
                                  height: 55,
                                  child: TextFormField(
                                    validator: Validator.courseDiscount,
                                    keyboardType: TextInputType.number,
                                    controller:
                                        studentcontroller.coursediscount,
                                    decoration: InputDecoration(
                                      hintText: "Discount Amount",
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
                                      FontAwesomeIcons.calendar,
                                      size: 17,
                                    ),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    Text(
                                      "Select Course Start Date",
                                      style: TextStyle(
                                          fontFamily: Poppinsregulars),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 4),
                                child: InkWell(
                                  onTap: () async {
                                    DateTime? datepicked = await showDatePicker(
                                        context: context,
                                        initialDate: DateTime.now(),
                                        firstDate: DateTime(1930),
                                        lastDate: DateTime.now());

                                    if (datepicked != null) {
                                      studentcontroller.startcoursedata.value =
                                          "${datepicked.day}/${datepicked.month}/${datepicked.year}";
                                      print(studentcontroller
                                          .startcoursedata.value);
                                    } else if (datepicked == "null" &&
                                        datepicked == null) {
                                      studentcontroller.startcoursedata.value =
                                          "Select Course Start Date";
                                    } else {
                                      studentcontroller.startcoursedata.value =
                                          "Select Course Start Date";
                                    }

                                    //bottom datapicker select to date of birth
                                    // DatePicker.showDatePicker(context,
                                    //     showTitleActions: true,
                                    //     minTime: DateTime(2014, 3, 5),
                                    //     maxTime: DateTime(2019, 6, 7), onChanged: (date) {
                                    //       print('change $date');
                                    //     }, onConfirm: (date) {
                                    //       print('confirm $date');
                                    //     }, currentTime: DateTime.now(), locale: LocaleType.en);
                                  },
                                  child: Stack(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 4),
                                        child: Container(
                                          height: 55,
                                          child: Obx(() {
                                            return TextField(
                                              textAlignVertical:
                                                  TextAlignVertical.bottom,
                                              enabled: false,
                                              decoration: InputDecoration(
                                                hintText:
                                                    "${studentcontroller.startcoursedata.value.toString() == "" ? "Select Course Start Date" : studentcontroller.startcoursedata.value} ",
                                                border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                    borderSide: BorderSide(
                                                        color: Colors.grey)),
                                              ),
                                            );
                                          }),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 275, top: 15),
                                        child: Icon(
                                          Icons.calendar_month_sharp,
                                          size: 30,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
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
                                      FontAwesomeIcons.calendar,
                                      size: 17,
                                    ),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    Text(
                                      "Select Course End Date",
                                      style: TextStyle(
                                          fontFamily: Poppinsregulars),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 4),
                                child: InkWell(
                                  onTap: () async {
                                    DateTime? datepicked = await showDatePicker(
                                        context: context,
                                        initialDate: DateTime.now(),
                                        firstDate: DateTime(1930),
                                        lastDate: DateTime.now());

                                    if (datepicked != null) {
                                      studentcontroller.endcoursedata.value =
                                          "${datepicked.day}/${datepicked.month}/${datepicked.year}";
                                      print(studentcontroller
                                          .endcoursedata.value);
                                    } else if (datepicked == "null" &&
                                        datepicked == null) {
                                      studentcontroller.endcoursedata.value =
                                          "Select Course End Date";
                                    } else {
                                      studentcontroller.endcoursedata.value =
                                          "Select Course End Date";
                                    }
                                  },
                                  child: Stack(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 4),
                                        child: Container(
                                          height: 55,
                                          child: Obx(() {
                                            return TextField(
                                              textAlignVertical:
                                                  TextAlignVertical.bottom,
                                              enabled: false,
                                              decoration: InputDecoration(
                                                hintText:
                                                    "${studentcontroller.endcoursedata.value.toString() == "" ? "Select Course End Date" : studentcontroller.endcoursedata.value} ",
                                                border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                    borderSide: BorderSide(
                                                        color: Colors.grey)),
                                              ),
                                            );
                                          }),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 275, top: 15),
                                        child: Icon(
                                          Icons.calendar_month_sharp,
                                          size: 30,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
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
                                      FontAwesomeIcons.moneyCheckDollar,
                                      size: 17,
                                    ),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    Text(
                                      "Enter Student Paid Amount",
                                      style: TextStyle(
                                          fontFamily: Poppinsregulars),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 4),
                                child: Container(
                                  height: 55,
                                  child: TextFormField(
                                    validator: Validator.coursePaidAmount,
                                    keyboardType: TextInputType.number,
                                    controller:
                                        studentcontroller.coursepaidamount,
                                    decoration: InputDecoration(
                                      hintText: "Paid Amount",
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          borderSide:
                                              BorderSide(color: Colors.grey)),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        RoundBtn(
                          title: "SUBMIT",
                          ontap: () {
                            if (studentcontroller.studentform2key.currentState!
                                .validate()) {
                            } else {
                              Navigator.pushNamed(
                                  context, RoutesName.A_StudentProfileScreen);
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
    );
  }
}
