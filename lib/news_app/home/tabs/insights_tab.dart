import 'package:exam_ui/news_app/home/tabbar/discover_tabbar.dart';
import 'package:exam_ui/news_app/home/tabbar/most_viewed_tabbar.dart';
import 'package:exam_ui/news_app/home/tabbar/news_tabbar.dart';
import 'package:exam_ui/news_app/home/tabbar/saved_tabbar.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class insightsTab extends StatelessWidget {
  const insightsTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.grey.withOpacity(0.5),
          body: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, bottom: 15),
                  child: Center(
                      child: Image.asset("assets/images/news/logo_news.png")),
                ),
                Container(
                  height: 44,
                  width: 320,
                  decoration: BoxDecoration(
                      //     color: Color(0xffFFFFFF),
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                          width: 1, color: Colors.grey.withOpacity(0.3))),
                  child: TextFormField(
                    onTap: () {},
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: 'Articles, Video, Audio and More,...',
                      hintStyle: GoogleFonts.inter(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff667085)),
                      prefixIcon:
                          Image.asset("assets/images/news/ic_search.png"),
                      enabledBorder: buildOutlineInputBorder(),
                      border: buildOutlineInputBorder(),
                      focusedBorder: buildOutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TabBar(

                  //indicatorSize: TabBarIndicatorSize.label,
                  isScrollable: true,
                  padding: EdgeInsets.all(5),
                  indicatorPadding: EdgeInsets.all(5),
                  labelPadding: EdgeInsets.all(4),
                  indicatorWeight: 5,
                  // unselectedLabelStyle: ,
                  unselectedLabelColor: Color(0xff667085),
                  labelColor: Color(0xff6941C6),
                  labelStyle: TextStyle(
                    color: Color(0xffD6BBFB)
                  ),
                  indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(50), // Creates border
                      color: Colors.transparent),
                  tabs: [
                    tab("Discover"),
                    tab("News"),
                    tab("Most Viewed"),
                    tab("Saved"),
                  ],
                ),

                Expanded(

                  child: TabBarView(
                    //controller: tabcontroller,
                      children: [
                        discoverTabbar(),
                        newsTabbar(),
                        mostViewedTabbar(),
                        savedTabbar(),
                      ]
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          width: 1,
                          color: Colors.grey.withOpacity(0.3),
                        ));
  }

  Tab tab(String label) {
    return Tab(

      child: Container(

        padding: EdgeInsets.all(10),
        height: 40,
        //width: 99,
        decoration: BoxDecoration(
            color: Color(0xffF4EBFF),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Color(0xffD6BBFB), width: 1)),
        child: Center(
          child: Text(
            label,
            style: GoogleFonts.inter(fontWeight: FontWeight.w500, fontSize: 16),
          ),
        ),
      ),
    );
  }
}
