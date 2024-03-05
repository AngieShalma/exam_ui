import 'package:exam_ui/mental_health_app/home/tabs/mental_health_tab.dart';
import 'package:exam_ui/mental_health_app/home/tabs/tab_2.dart';
import 'package:exam_ui/mental_health_app/home/tabs/tab_3.dart';
import 'package:exam_ui/mental_health_app/home/tabs/tab_4.dart';
import 'package:flutter/material.dart';

class homeScreen extends StatefulWidget {
  static const String routeName = "home";

  homeScreen({Key? key}) : super(key: key);

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        unselectedItemColor: Color(0xff667085),
        selectedItemColor: Color(0xff027A48),
        type: BottomNavigationBarType.fixed,
        onTap: (value) {
          index = value;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(
            icon: Column(children: [
              ImageIcon(AssetImage("assets/images/health/ic_home.png")),
              if (index == 0) ...[
                SizedBox(
                  height: 5,
                ),
                CircleAvatar(
                  radius: 3,
                  backgroundColor: Color(0xff027A48),
                ),
              ],
            ]),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Column(
              children: [
                ImageIcon(AssetImage("assets/images/health/ic_tab2.png")),
                if (index == 1) ...[
                  SizedBox(
                    height: 5,
                  ),
                  CircleAvatar(
                    radius: 3,
                    backgroundColor: Color(0xff027A48),
                  ),
                ]
              ],
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Column(
              children: [
                ImageIcon(AssetImage("assets/images/health/ic_calendar.png")),
                if (index == 2) ...[
                  SizedBox(
                    height: 5,
                  ),
                  CircleAvatar(
                    radius: 3,
                    backgroundColor: Color(0xff027A48),
                  ),
                ]
              ],
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Column(
              children: [
                ImageIcon(AssetImage("assets/images/health/ic_tab4.png")),
                if (index == 3) ...[
                  SizedBox(
                    height: 5,
                  ),
                  CircleAvatar(
                    radius: 3,
                    backgroundColor: Color(0xff027A48),
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
    mentalHealthTab(),
    tab2(),
    tab3(),
    tab4(),
  ];
}
