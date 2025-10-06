import 'package:flutter/material.dart';
import 'package:plant_application/Widgets/tile2.dart';
import 'package:plant_application/pages/colors.dart';

class Detailviewpage extends StatelessWidget {
  const Detailviewpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Row(
          children: [
            // first colum
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: Column(
                children: [
                  Transform.translate( offset: Offset(-20, 0),
                    child: Container(
                    width: 70,
                    height: 70,
                    child: Image(image: AssetImage("assets/icons/back_arrow.png")),),
                  ),
                  SizedBox(height: 80 ),
                  tile2(iconePath: "assets/icons/sun.png"),
                  SizedBox(height: 50),
                  tile2(iconePath: "assets/icons/icon_2.png"),
                  SizedBox(height: 50),
                  tile2(iconePath: "assets/icons/icon_3.png"),
                  SizedBox(height: 50),
                  tile2(iconePath: "assets/icons/icon_4.png"),
                ],
              ),
            ),

            // seconde Colum
            Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 700,
                      width: 330,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(color: Maincolor.withOpacity(0.3),
                          blurRadius: 20,
                          offset: Offset(-5, 10
                          )),
                        ],

                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(50),
                          bottomRight: Radius.circular(50),
                        ),
                        image: DecorationImage(

                          image: AssetImage("assets/images/img.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
