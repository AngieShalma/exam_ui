import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class verticalSpacer extends StatelessWidget {
  const verticalSpacer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.symmetric(horizontal: 25),
      height: 60.h,
      width: 1.w,
      color: Color(0xffD9D9D9),
    );
  }
}
