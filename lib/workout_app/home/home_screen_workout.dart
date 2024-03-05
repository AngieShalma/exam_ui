
import 'package:exam_ui/workout_app/home/tabs/tab_2.dart';
import 'package:exam_ui/workout_app/home/tabs/tab_3.dart';
import 'package:exam_ui/workout_app/home/tabs/tab_4.dart';
import 'package:exam_ui/workout_app/home/tabs/workout_tab/workout_tab.dart';
import 'package:flutter/material.dart';

class homeScreenWorkout extends StatefulWidget {
  static const String routeName = "home workout";

  homeScreenWorkout({Key? key}) : super(key: key);

  @override
  State<homeScreenWorkout> createState() => _homeScreenWorkoutState();
}

class _homeScreenWorkoutState extends State<homeScreenWorkout> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        unselectedItemColor: Color(0xff667085),
        selectedItemColor: Color(0xff363F72),
        type: BottomNavigationBarType.fixed,
        onTap: (value) {
          index = value;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(
            icon: Column(children: [
              ImageIcon(AssetImage("assets/images/workout/ic_home.png")),
              if (index == 0) ...[
                SizedBox(
                  height: 5,
                ),
                CircleAvatar(
                  radius: 3,
                  backgroundColor: Color(0xff363F72),
                ),
              ],
            ]),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Column(
              children: [
                ImageIcon(AssetImage("assets/images/workout/ic_tab2_workout.png")),
                if (index == 1) ...[
                  SizedBox(
                    height: 5,
                  ),
                  CircleAvatar(
                    radius: 3,
                    backgroundColor: Color(0xff363F72),
                  ),
                ]
              ],
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Column(
              children: [
                ImageIcon(AssetImage("assets/images/workout/ic_tab3_workout.png")),
                if (index == 2) ...[
                  SizedBox(
                    height: 5,
                  ),
                  CircleAvatar(
                    radius: 3,
                    backgroundColor: Color(0xff363F72),
                  ),
                ]
              ],
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Column(
              children: [
                ImageIcon(AssetImage("assets/images/workout/ic_tab4.png")),
                if (index == 3) ...[
                  SizedBox(
                    height: 5,
                  ),
                  CircleAvatar(
                    radius: 3,
                    backgroundColor: Color(0xff363F72),
                  ),
                ],
              ],
            ),
            label: "",
          ),
        ],
      ),
      body: Tabs[index],
    );
  }

  List<Widget> Tabs = [
    workoutTab(),
 tab2Workout(),
    tab3Workout(),
    tab4Workout(),
  ];
}
