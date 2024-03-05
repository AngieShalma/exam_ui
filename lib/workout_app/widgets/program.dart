import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class program extends StatelessWidget {
   program({
  super.key,
   required this.days,
   required this.title,
   required this.subTitle,
   required this.url,
  });
String days;
String title;
String subTitle;
String url;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.w,
      height: 184.h,
      decoration: BoxDecoration(
          color: Color(0xffF8F9FC),
          borderRadius: BorderRadius.circular(10)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [

          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xffFCFCFD),
                      shape: RoundedRectangleBorder(

                        borderRadius: BorderRadius.circular(25.0),

                      ),
                    ),
                    onPressed: (){}, child:
                Center(
                  child: Text(
                    days,style: GoogleFonts.inter(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.black
                  ),),
                )),
                SizedBox(height: 10,),
                Text(
                 title,style: GoogleFonts.inter(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),),
                SizedBox(height: 10,),

                Text(
                  subTitle,style: GoogleFonts.inter(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),),
                SizedBox(height: 10,),
                Row(children: [
                  Icon(Icons.watch_later_outlined,size: 19,),
                  Text(
                    "  30 mins",style: GoogleFonts.inter(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),),
                ],)




              ],
            ),
          ),
          Image.asset(url,width: 145.w,height: 118.h,),
        ],
      ),
    );
  }
}