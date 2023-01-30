import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_study/Customers/SplashScreen.dart';

import '../../View/A_AllStudentScreen.dart';
import '../../View/A_Dashboard.dart';
import '../../View/A_InsituteDetails_Screen.dart';
import '../../View/A_LoginScreen.dart';
import '../../View/A_SignupScreen.dart';

import '../../View/A_StudentCourseDetails.dart';
import '../../View/A_StudentForm2.dart';
import '../../View/A_StudentProfileScreen.dart';
import '../../View/A_Student_Form1.dart';
import '../../View/A_Student_Profile.dart';
import 'RoutesName.dart';

class Routes {
  static Route<dynamic> getroutes(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.AdminDashboardScreen:
        return MaterialPageRoute(builder: (context) => A_Dashboard());

      case RoutesName.SplashScreen:
        return MaterialPageRoute(builder: (context) => SplashScreen());

      case RoutesName.AdminLoginScreen:
        return MaterialPageRoute(builder: (context) => A_LoginScreen());

      case RoutesName.AdminSignupScreen:
        return MaterialPageRoute(builder: (context) => A_SignupScreen());

      case RoutesName.InstituteDetailsScreen:
        return MaterialPageRoute(
            builder: (context) => A_InstituteDetailsScreen());

      case RoutesName.A_StudentForm1:
        return MaterialPageRoute(builder: (context) => A_StudentForm1());

      case RoutesName.A_StudentForm2:
        return MaterialPageRoute(builder: (context) => A_StudentForm2());

      case RoutesName.A_AllStudentScreen:
        return MaterialPageRoute(builder: (context) => A_AllStudentScreen());

      case RoutesName.A_StudentProfileScreen:
        return MaterialPageRoute(
            builder: (context) => A_StudentProfileScreen());

      case RoutesName.A_StudentProfile:
        return MaterialPageRoute(builder: (context)=>A_StudentProfile());

        case RoutesName.A_StudentCourseDetails:
        return MaterialPageRoute(builder: (context)=>A_StudentCourseDetails());


      default:
        return MaterialPageRoute(builder: (context) => A_Dashboard());
    }
  }
}
