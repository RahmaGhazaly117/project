import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/widget/card.dart';
import '../data.dart';

class HomeScreen extends StatelessWidget {
  List<CardInfo> cards =cardList;
  List<Widget> screens=screenslist;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  backgroundColor: Colors.white.withOpacity(.3),
  title: Text("Colours" , style: TextStyle(color: Colors.red.withOpacity(1),
      fontSize: 40,fontWeight: FontWeight.bold),)
  ,centerTitle: true,elevation: 0.0,
),
          body:ListView.builder(
            shrinkWrap: true,
              padding: EdgeInsets.all(5),
              itemCount: cards.length,
              itemBuilder: (context,index)=>
          card(cardd: cards[index], onpressed: (){
            Get.to(screens[index]);
          }),
          )


    );
  }
}
