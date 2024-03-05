import 'package:exam_ui/mental_health_app/home/home_screen.dart';
import 'package:exam_ui/mental_health_app/home/tabs/mental_health_tab.dart';
import 'package:exam_ui/news_app/home/home_news_screen.dart';
import 'package:exam_ui/workout_app/home/home_screen_workout.dart';
import 'package:flutter/material.dart';

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
      routes: {
       homeScreen.routeName:(context)=>homeScreen(),
        homeScreenWorkout.routeName:(context)=>homeScreenWorkout(),
        homeNewsScreen.routeName:(context)=>homeNewsScreen()

      },
      initialRoute: homeNewsScreen.routeName ,
    );
  }
}

