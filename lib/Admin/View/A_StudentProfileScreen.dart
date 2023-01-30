import 'package:flutter/material.dart';
import 'package:get/get.dart';

class A_StudentProfileScreen extends StatefulWidget {
  const A_StudentProfileScreen({Key? key}) : super(key: key);

  @override
  State<A_StudentProfileScreen> createState() => _A_StudentProfileScreenState();
}

class _A_StudentProfileScreenState extends State<A_StudentProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text("Profile",style: TextStyle(color: Colors.black54),),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15,top: 20),
            child: Text("Edit Profile",style: TextStyle(color: Colors.black54),),
          ),
        ],
      ),
      body: Container(
        color: Colors.white,
        height: Get.height*0.1,
        child: Column(
          children: [

            Text("Samad"),
            Text("Samad"),
            Text("Samad"),
          ],
        ),
      ),
    );
  }
}
