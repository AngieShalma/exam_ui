import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/exercise.dart';

class mentalHealthTab extends StatefulWidget {
  static const String routeName = "health";

  mentalHealthTab({Key? key}) : super(key: key);

  @override
  State<mentalHealthTab> createState() => _mentalHealthTabState();
}

class _mentalHealthTabState extends State<mentalHealthTab> {
  final items = [
    Image.asset('assets/images/health/feature.png'),
    Image.asset('assets/images/health/feature.png'),
    Image.asset('assets/images/health/feature.png'),
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 30.0, right: 30, top: 40),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset("assets/images/health/logo.png"),
                  Image.asset("assets/images/health/bell.png"),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Text(
                    "Hello, ",
                    style: GoogleFonts.inter(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    "Sara Rose",
                    style: GoogleFonts.inter(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "How are you feeling today ?",
                style: GoogleFonts.inter(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildContainerReaction("assets/images/health/love.png"),
                  buildContainerReaction("assets/images/health/cool.png"),
                  buildContainerReaction("assets/images/health/happy.png"),
                  buildContainerReaction("assets/images/health/sad.png"),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Feature",
                    style: GoogleFonts.inter(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Spacer(),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      "See more",
                      style: GoogleFonts.inter(
                        fontSize: 14,
                        color: Color(0xff027A48),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Icon(
                    (Icons.keyboard_arrow_right_sharp),
                    color: Color(0xff027A48),
                    size: 20,
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              CarouselSlider(
                options: CarouselOptions(
                  autoPlay: true,
                  aspectRatio: 2.0,
                  enlargeCenterPage: true,
                  onPageChanged: (index, reason) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                ),
                items: items,
              ),
              Center(
                child: DotsIndicator(
                  dotsCount: items.length,
                  position: currentIndex,
                  decorator: DotsDecorator(
                      color: Color(0xffD9D9D9), activeColor: Color(0xff98A2B3)),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Exercise",
                    style: GoogleFonts.inter(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Spacer(),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      "See more",
                      style: GoogleFonts.inter(
                        fontSize: 14,
                        color: Color(0xff027A48),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Icon(
                    (Icons.keyboard_arrow_right_sharp),
                    color: Color(0xff027A48),
                    size: 20,
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  exercise(
                    color: Color(0xffF9F5FF),
                    imageUrl: "assets/images/health/ic_relaxition.png",
                    label: "Relaxation",
                  ),
                  exercise(
                    color: Color(0xffFDF2FA),
                    imageUrl: "assets/images/health/ic_meditation.png",
                    label: "Meditation",
                  ),

                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  exercise(
                    color: Color(0xffFFFAF5),
                    imageUrl: "assets/images/health/ic_breathing.png",
                    label: "Beathing",
                  ),
                  exercise(
                    color: Color(0xffF0F9FF),

                    imageUrl:"assets/images/health/ic_yoga.png",
                    label: "Yoga",
                  ),


                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container buildContainerReaction(String url) {
    return Container(
        height: 60,
        width: 60,
        child: Image.asset(
          url,
        ));
  }
}
