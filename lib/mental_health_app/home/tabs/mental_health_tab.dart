import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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

      // appBar: AppBar(
      //   elevation: 0,
      //   backgroundColor: Colors.transparent,
      //   title:  Image.asset("assets/images/health/logo.png"),
      //   actions: [
      //    Image.asset("assets/images/health/bell.png"),
      //   ],
      // ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 30),
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
                height: 10,
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
                height: 5,
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
                  Container(
                      height: 60,
                      width: 60,
                      child: Image.asset(
                        "assets/images/health/love.png",
                      )),
                  Container(
                    height: 60,
                    width: 60,
                    child: Image.asset(
                      "assets/images/health/cool.png",
                    ),
                  ),
                  Container(
                      height: 60,
                      width: 60,
                      child: Image.asset(
                        "assets/images/health/happy.png",
                      )),
                  Container(
                    height: 60,
                    width: 60,
                    child: Image.asset(
                      "assets/images/health/sad.png",
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:
                15.0),
                child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Feature",
                      style: GoogleFonts.inter(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),

                    InkWell(
                      onTap: (){},
                      child: Container(
                        height: 20,
                        width: 64,
                        child: Image.asset(
                          "assets/images/health/see_more.png",

                        ),
                      ),
                    ),
                  ],
                ),
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
                    color: Color(0xffD9D9D9),
                      activeColor: Color(0xff98A2B3)
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Exercise",
                      style: GoogleFonts.inter(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),

                    InkWell(
                      onTap: (){},
                      child: Container(
                        height: 20,
                        width: 64,
                        child: Image.asset(
                          "assets/images/health/see_more.png",

                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [

                  Container(
                      height: 56,
                      width: 151,
                      decoration: BoxDecoration(
                        color: Color(0xffF9F5FF),
                        borderRadius: BorderRadius.circular(8)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                        children: [
                          Image.asset(
                            "assets/images/health/ic_relaxition.png",

                          ),
                          Text(
                            "Relaxation",
                            style: GoogleFonts.inter(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      )),
                  Container(
                    height: 56,
                    width: 151,
                      decoration: BoxDecoration(
                          color: Color(0xffFDF2FA),
                          borderRadius: BorderRadius.circular(8)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                        children: [
                          Image.asset(
                            "assets/images/health/ic_meditation.png",

                          ),
                          Text(
                            "Meditation",
                            style: GoogleFonts.inter(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      )
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [

                  Container(
                      height: 56,
                      width: 151,
                      decoration: BoxDecoration(
                          color: Color(0xffFFFAF5),
                          borderRadius: BorderRadius.circular(8)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                        children: [
                          Image.asset(
                            "assets/images/health/ic_breathing.png",

                          ),
                          Text(
                            "Beathing",
                            style: GoogleFonts.inter(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      )),
                  Container(
                      height: 56,
                      width: 151,
                      decoration: BoxDecoration(
                          color: Color(0xffF0F9FF),
                          borderRadius: BorderRadius.circular(8)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                        children: [
                          Image.asset(
                            "assets/images/health/ic_yoga.png",

                          ),
                          Text(
                            "Yoga",
                            style: GoogleFonts.inter(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      )
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
