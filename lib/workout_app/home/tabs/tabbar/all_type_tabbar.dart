import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class allTypeTabbar extends StatelessWidget {
   allTypeTabbar({Key? key}) : super(key: key);
List <String>images=[
  "assets/images/workout/Plank.png",
  "assets/images/workout/Plank2.png",
  "assets/images/workout/Plank.png",
  "assets/images/workout/Plank2.png"
];
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context,index)=>SizedBox(height: 5,),
      itemBuilder: (context,index){
      return Image.asset(images[index]);
    }
    ,itemCount: images.length,);
  }
}
