import 'package:flutter/material.dart';

import '../data.dart';

class card extends StatelessWidget {
  CardInfo cardd;
  final VoidCallback onpressed;
  card({required this.cardd, required this.onpressed
  });

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: onpressed,
      child: Container(
        padding: EdgeInsets.all(10.0),
        width: double.infinity,
        height: 230,
        child: Stack(
          children: [
            Positioned(
              left:40,
              child: Container(
                decoration: BoxDecoration(
                  color: cardd.color,
                  borderRadius: BorderRadius.circular(100.0),),
                constraints: BoxConstraints(maxWidth: 330,maxHeight: 200),
              ),
            ),
            Positioned(
                top: 25,
                // "Alphabet"
                child: Hero(tag: cardd.text,
                  transitionOnUserGestures: true,
                  // "assets/images/alphabetical.png"
                  child: Image(image: AssetImage(cardd.image),
                    width: 150,
                    height: 150,),
                )),
            Positioned(top: 90,
                left: 170,
                child: Text(
                  cardd.text,
                  style: TextStyle(color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 40),
                )),
          ],
        ),
      ),
    );
  }
}
