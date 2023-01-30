import 'package:flutter/material.dart';
import 'package:smart_study/Admin/Utils/Resources/colors.dart';
import 'package:smart_study/Admin/Utils/Resources/fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../Utils/Resources/Navigationbar.dart';
import '../Utils/Routes/RoutesName.dart';
import 'package:get/get.dart';

class A_Dashboard extends StatefulWidget {
  const A_Dashboard({Key? key}) : super(key: key);

  @override
  State<A_Dashboard> createState() => _A_DashboardState();
}

class _A_DashboardState extends State<A_Dashboard> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        // elevation: 0,
        title: Text("Dashboard"),
        backgroundColor: Appcolors.tbcolor,
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              right: 10,
              top: 5,
            ),
            child: Icon(Icons.notifications),
          ),
        ],
      ),
      drawer: Navigationbar(),
      body: Stack(
        children: [
          Container(
            height: Get.height * 0.3,
            width: Get.width * 1,
            decoration: BoxDecoration(
                color: Appcolors.appcolor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(70),
                  bottomRight: Radius.circular(70),
                )),
            child: Container(
              height: 100,
              width: 200,
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30, left: 20),
                    child: Container(
                      child: Row(
                        children: [
                          Container(
                            width: 60.0,
                            height: 60.0,

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
                              height: 60.0,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Hello",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: Poppinsbolds,
                                        fontSize: 19),
                                  ),
                                  Text(
                                    "Smart Learning",
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
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 150, left: 25, right: 25),
            child: Container(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: InkWell(
                      onTap: (){
                        Navigator.pushNamed(context, RoutesName.A_StudentForm1);
                      },
                      child: Container(
                        height: Get.height * 0.2,
                        width: Get.width / 2.5,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(7.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 25),
                          child: Column(
                            children: [
                              // FaIcon(FontAwesomeIcons.squarePen,size: 70,color: Colors.grey,),
                              Icon(
                                Icons.note_alt_outlined,
                                size: 70,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Text(
                                  "Online Admission",
                                  style: TextStyle(fontFamily: Poppinsmediums),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                        Navigator.pushNamed(context, RoutesName.A_StudentForm2);

                    },
                    child: Container(
                      height: Get.height * 0.2,
                      width: Get.width / 2.5,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(7.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 25),
                        child: Column(
                          children: [
                            FaIcon(
                              FontAwesomeIcons.users,
                              size: 70,
                              color: Colors.grey,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Text(
                                "Student Details",
                                style: TextStyle(fontFamily: Poppinsmediums),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
