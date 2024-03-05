import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class exercise extends StatelessWidget {
   exercise({
  super.key,
  required this.imageUrl,
  required this.label,
  required this.color,
  });
 String imageUrl;
  String label;
  Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 56,
        width: 151,
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(8)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: [
            Image.asset(
              imageUrl,

            ),
            Text(
             label,
              style: GoogleFonts.inter(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ));
  }
}