import 'package:flutter/material.dart';
import 'package:lesson_two/pages/animations/ball_animations.dart';
import 'package:lesson_two/pages/animations/heart_animation.dart';
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
      home: const BallAnimation(),
      routes: {
        HomeAssignmentPage.id: (context) => const HomeAssignmentPage(),
        HomePage.id: (context) => const HomePage(),
        BallAnimation.id: (context) => const BallAnimation(),
        HeartAnimation.id: (context) => const HeartAnimation(),
      },
    );
  }
}
