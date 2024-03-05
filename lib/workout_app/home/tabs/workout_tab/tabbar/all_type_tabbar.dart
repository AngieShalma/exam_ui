import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../widgets/program.dart';

class allTypeTabbar extends StatelessWidget {
  allTypeTabbar({Key? key}) : super(key: key);

// List <String>images=[
//   "assets/images/workout/Plank.png",
//   "assets/images/workout/Plank2.png",
//   "assets/images/workout/Plank.png",
//   "assets/images/workout/Plank2.png"
// ];
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        program(
            days: "7 days",
            title: "Morning Yoga",
            subTitle: "Improve mental focus.",
            url: "assets/images/workout/morning_yoga.png"),
        SizedBox(
          height: 15,
        ),
        program(
            days: "3 days",
            title: "Plank Exercise",
            subTitle: "Improve posture and stability.",
            url: "assets/images/workout/plank_pic.png"),
      ],
    );
  }
}
