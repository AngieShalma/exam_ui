import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:exam_ui/workout_app/home/tabs/tabbar/all_type_tabbar.dart';
import 'package:exam_ui/workout_app/home/tabs/tabbar/full_body_tabbar.dart';
import 'package:exam_ui/workout_app/home/tabs/tabbar/lower_tabbar.dart';
import 'package:exam_ui/workout_app/home/tabs/tabbar/upper_tabbar..dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class workoutTab extends StatefulWidget {
  static const String routeName = "health";

  workoutTab({Key? key}) : super(key: key);

  @override
  State<workoutTab> createState() => _workoutTabState();
}

class _workoutTabState extends State<workoutTab> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Padding(
            padding: const EdgeInsets.only(right: 15, left: 15.0, top: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset("assets/images/workout/profile_pic.png"),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hello, Jade",
                          style: GoogleFonts.inter(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          "Ready to workout?",
                          style: GoogleFonts.inter(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Image.asset("assets/images/health/bell.png"),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Image.asset(
                  "assets/images/workout/rate_img.png",
                  width: double.infinity,
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Workout Programs",
                  style: GoogleFonts.inter(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TabBar(
                  isScrollable: true,
                  labelColor: Color(0xff363F72),
                  labelStyle: GoogleFonts.inter(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                  unselectedLabelColor: Color(0xff667085),
                  indicatorWeight: 2,
                  indicatorColor: Color(0xff363F72),
                  tabs: [
                    Tab(
                      child: Text(
                        "All Type",
                        style: GoogleFonts.inter(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Full Body",
                        style: GoogleFonts.inter(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Upper",
                        style: GoogleFonts.inter(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Lower",
                        style: GoogleFonts.inter(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      allTypeTabbar(),
                      fullBodyTabbar(),
                      upperTabbar(),
                      lowerTabbar(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
