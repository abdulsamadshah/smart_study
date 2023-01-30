import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:smart_study/Admin/Utils/Resources/fonts.dart';
import 'package:get/get.dart';
import '../../View_Model/_A_StudentForm2_Controller.dart';

class DropdownWidget extends StatefulWidget {
  // final String title;
  const DropdownWidget({super.key});

  @override
  State<DropdownWidget> createState() => _DropdownWidgetState();
}

class _DropdownWidgetState extends State<DropdownWidget> {
//  String dropdownvalue = 'Maharashtra';

  var items = [
    'Data Science',
    'Big Data Engineering',
    'Data Analytics',
    'Software Development',
    'Cyber Security',
    'Web Development',
  ];
  String? dropdownvalue;

  final controller=Get.put(A_StudentForm2Controller());

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width:MediaQuery.of(context).size.width * 0.9,
        height: 55,
          decoration: BoxDecoration(
             border: Border.all(width: 1,color: Colors.grey),
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(
                width: 10,
              ),
              Obx(
                  (){
                    return Text("${controller.getcoursename=="" ? "Select Course" : controller.getcoursename.toString()}",
                    style: const TextStyle(
                    fontSize: 16,
                    color: Color.fromRGBO(108, 93, 93, 0.8),
                    fontFamily: 'Poppins',
                    // fontWeight: FontWeight.w500
                    ),
                    );
                  }

              ),
              const SizedBox(
                width: 20,
              ),
              Flexible(
                child: DropdownButton(
                  underline: const SizedBox(),
                  menuMaxHeight: 250,
                  // focusColor: const Color(0xffE5E5E5),
                  focusColor: const Color(0xffffff),
                  // dropdownColor: const Color(0xffE5E5E5),
                  dropdownColor: const Color(0xffFFFFFF),
                  isExpanded: true,
                  // value: dropdownvalue,
                  icon: const Icon(Icons.keyboard_arrow_down,
                      color: Color(0xff534A4A)),
                  items: items.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(
                        items,
                        style: const TextStyle(
                            fontSize: 13,
                            color: Color.fromRGBO(108, 93, 93, 0.8),
                            fontFamily: Poppinsmediums,

                        ),
                      ),
                    );
                  }).toList(),
                  onChanged: (String? value) {
                    //using her to sertter method to getx
                    controller.setcoursname=value.toString();

                  },

                ),
              ),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
        ),
    );
  }
}
