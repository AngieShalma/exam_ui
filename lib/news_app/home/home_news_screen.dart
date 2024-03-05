import 'package:exam_ui/news_app/home/tabs/chat_tab.dart';
import 'package:exam_ui/news_app/home/tabs/insights_tab.dart';
import 'package:exam_ui/news_app/home/tabs/today_tab.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class homeNewsScreen extends StatefulWidget {
  static const String routeName="news";
   homeNewsScreen({Key? key}) : super(key: key);

  @override
  State<homeNewsScreen> createState() => _homeNewsScreenState();
}

class _homeNewsScreenState extends State<homeNewsScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        unselectedItemColor: Color(0xff475467),
        selectedItemColor: Color(0xff6941C6),
        selectedLabelStyle: GoogleFonts.inter(
          color: Color(0xff7F56D9),
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
        unselectedLabelStyle:GoogleFonts.inter(
          color: Color(0xff475467),
          fontSize: 12,
          fontWeight: FontWeight.w400,
        ) ,
        type: BottomNavigationBarType.fixed,
        onTap: (value) {
          index = value;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/images/news/ic_calendar.png")),
            label: "Today",


          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/images/news/ic_grid.png")),
            label: "Insights",


          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/images/news/ic_chat.png")),
            label: "Chat",


          ),

        ],
      ),
      body: Tabs[index],
    );
  }

  List<Widget> Tabs = [
   todayTab(),
    insightsTab(),
    chatTab(),
  ];
}

