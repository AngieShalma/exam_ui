import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:exam_ui/workout_app/home/tabs/workout_tab/tabbar/all_type_tabbar.dart';
import 'package:exam_ui/workout_app/home/tabs/workout_tab/tabbar/full_body_tabbar.dart';
import 'package:exam_ui/workout_app/home/tabs/workout_tab/tabbar/lower_tabbar.dart';
import 'package:exam_ui/workout_app/home/tabs/workout_tab/tabbar/upper_tabbar..dart';
import 'package:exam_ui/workout_app/widgets/vertical_spacer.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
                        SizedBox(
                          height: 10,
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
                // Image.asset(
                //   "assets/images/workout/rate_img.png",
                //   width: double.infinity,
                // ),
                Container(
                  height: 82.h,
                  width: 330.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color(0xffF8F9FC)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(

                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Image.asset("assets/images/workout/heart.png"),
                                Text(
                                  " Heart Rate",
                                  style: GoogleFonts.inter(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Text(
                                  "81",
                                  style: GoogleFonts.inter(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  "BPM",
                                  style: GoogleFonts.inter(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),

                        verticalSpacer(),
                        Column(
                          children: [
                            Row(
                              children: [
                                Image.asset("assets/images/workout/list.png"),
                                Text(
                                  "To-do",
                                  style: GoogleFonts.inter(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Text(
                                  "32,5",
                                  style: GoogleFonts.inter(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  "%",
                                  style: GoogleFonts.inter(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),

                       verticalSpacer(),
                        Column(
                          children: [
                            Row(
                              children: [
                                Image.asset("assets/images/workout/cal.png"),
                                Text(
                                  "Calo",
                                  style: GoogleFonts.inter(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Text(
                                  "1000",
                                  style: GoogleFonts.inter(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  "Cal",
                                  style: GoogleFonts.inter(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),

                      ],
                    ),
                  ),
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
                  indicatorSize: TabBarIndicatorSize.label,
                  isScrollable: true,
                  labelColor: Color(0xff363F72),
                  labelStyle: GoogleFonts.inter(
                    fontSize: 16,
                    //color:Color(0xff363F72) ,
                    fontWeight: FontWeight.w500,
                  ),
                  unselectedLabelColor: Color(0xff667085),
                  indicator:  UnderlineTabIndicator(
                    borderSide: BorderSide(
                      color:  Color(0xff363F72),
                      width: 2.0,

                  ),),
                  // indicatorWeight: 2,
                  // indicatorColor: Color(0xff363F72),
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
