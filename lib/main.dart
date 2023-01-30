import 'package:flutter/material.dart';

import 'Admin/Utils/Routes/Route.dart';
import 'Admin/Utils/Routes/RoutesName.dart';

void main() {
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Smart Study',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      initialRoute: RoutesName.A_StudentForm1,
      onGenerateRoute: Routes.getroutes,
    );
  }
}
