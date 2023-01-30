import 'package:flutter/material.dart';
import 'package:smart_study/Admin/Utils/Resources/fonts.dart';
import 'package:get/get.dart';
import 'colors.dart';

class RoundBtn extends StatelessWidget {
  var title;
  bool loading;
  VoidCallback ontap;
   RoundBtn({
    Key? key,
    this.title,
    this.loading=false,
    required this.ontap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        height: 50,
        width: Get.width*0.9,
        decoration: BoxDecoration(
          color: Appcolors.appcolor,
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Center(child: Text(title,style: TextStyle(color: Colors.white,fontSize: 23,fontFamily: Poppinsmediums),)),
      ),
    );
  }
}
