import 'package:flutter/material.dart';
import 'package:plant_application/Widgets/tile2.dart';

class Detailviewpage extends StatelessWidget {
  const Detailviewpage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:Row(
        children: [
          // first colum
          Column(
            children: [
              tile2(iconePath: "assets/icons/back_arrow.png"),
              SizedBox(height: 70,),
              tile2(iconePath: "assets/icons/sun.png"),
              SizedBox(height: 70,),
              tile2(iconePath: "assets/icons/back_arrow.png"),
            ],

          ),

          // seconde Colum

          Column(
            children: [



            ],
          )
        ],
      ),

    );
  }
}
