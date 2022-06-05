import 'package:flutter/material.dart';
import 'package:lesson_two/pages/home_assignement.dart';
import 'package:lesson_two/pages/home_page.dart';

void main(){
  runApp(const MyApp());
  
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeAssignmentPage(),
      routes: {
        HomeAssignmentPage.id: (context) => HomeAssignmentPage(),
        HomePage.id: (context) => HomePage(),
      },
    );
  }
}
