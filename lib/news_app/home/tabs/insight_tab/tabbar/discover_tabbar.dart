import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class discoverTabbar extends StatelessWidget {
   discoverTabbar({Key? key}) : super(key: key);
List <String>items=[
  "assets/images/news/carousel_img1.png",
  "assets/images/news/carousel_img2.png"
];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 5),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Hot topics",
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
                          "assets/images/news/Button.png",

                        ),
                      ),
                    ),
                  ],
                ),
            SizedBox(height: 10,),
            CarouselSlider(
              options: CarouselOptions(height: 160.0),
              items: items.map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(

                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(
                            color: Colors.transparent
                        ),
                        child: Image.asset(i,fit: BoxFit.contain,),
                    );
                  },
                );
              }).toList(),
            ),
            SizedBox(height: 5,),

            Text("Get Tips",style: GoogleFonts.inter(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),),
            SizedBox(height: 15,),
            Container(
              height: 196,
              width: 326,
              decoration: BoxDecoration(
               border:Border.all(width:1,color: Color(0xffE4E7EC)),
                color: Color(0xffF2F4F7),
                borderRadius: BorderRadius.circular(10)
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Image.asset("assets/images/news/Doctor.png"),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                  "Connect with doctors &\nget suggestions",style: GoogleFonts.inter(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),),
                      SizedBox(height: 10,),

                      Text(
                        "Connect now and get\n expert insights ",style: GoogleFonts.inter(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),),
                      SizedBox(height: 15,),
                    ElevatedButton(
                     style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff7F56D9),
                       shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(8.0),
                       ),
                    ),
                        onPressed: (){}, child:
                    Text(
                      "View detail",style: GoogleFonts.inter(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),))
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 15,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Cycle Phases and Period",
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
                      "assets/images/news/Button.png",

                    ),
                  ),
                ),
              ],
            ),


        ],
        ),
      ),
    );
  }
}
