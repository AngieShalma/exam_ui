import 'package:exam_ui/mental_health_app/home/home_screen.dart';
import 'package:exam_ui/news_app/home/home_news_screen.dart';
import 'package:exam_ui/workout_app/home/home_screen_workout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(390, 844),
        minTextAdapt: true,
        splitScreenMode: true,
        // Use builder only if you need to use library outside ScreenUtilInit context
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            routes: {
              homeScreen.routeName: (context) => homeScreen(),
              homeScreenWorkout.routeName: (context) => homeScreenWorkout(),
              homeNewsScreen.routeName: (context) => homeNewsScreen()
            },
            initialRoute:  homeNewsScreen.routeName,
          );
        });
  }
}
