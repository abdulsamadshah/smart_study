import 'package:flutter/material.dart';

import 'Utils.dart';
import 'package:get/get.dart';
class Navigationbar extends StatelessWidget {
  const Navigationbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: Drawer(
        width: Get.width*0.7,
        backgroundColor: Colors.white,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(40),
          ),
        ),

          child: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      height: 100,
                      child: Image.asset(
                        "assets/images/SmartStudyLogo.png",
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Divider(
                      height: 1,
                      thickness: 1,
                      color: Colors.black12,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  listItem(
                      ontap: () {
                        Navigator.pop(context);
                        // Navigator.push(context, MaterialPageRoute(builder: (context) => Userprofile())
                        // );
                      },
                      label: "My Profile",
                      icon: Icons.account_circle_rounded),
                  listItem(
                    ontap: () {
                      Navigator.pop(context);
                      Utils().myfluttertoast("Logout Successfully");
                    },
                    label: "Logout",
                    icon: Icons.logout,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Divider(
                      height: 1,
                      thickness: 1,
                      color: Colors.black12,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 15),
                    child: Text("Communicate"),
                  ),
                  listItem(
                    ontap: () {
                      Navigator.pop(context);
                      print("clicked");
                    },
                    label: "Share",
                    icon: Icons.share,
                  ),
                ],
              )
            ],
          ),

      ),
    );
  }

  Widget listItem(
      {required String label,
        required IconData icon,
        required VoidCallback ontap}) {
    final color = Colors.black87;
    final hovercolor = Colors.black87;

    return GestureDetector(
      onTap: ontap,
      child: ListTile(
        leading: Icon(
          icon,
          color: color,
        ),
        hoverColor: hovercolor,
        title: Text(label, style: TextStyle(color: color)),
      ),
    );
  }
}
