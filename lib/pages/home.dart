import 'package:flutter/material.dart';
import 'package:plant_application/Widgets/tile1.dart';
import 'package:plant_application/pages/colors.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                  child: Container(
                    width: double.maxFinite,
                    height: 300,
                    color: Maincolor,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40, left: 15),
                  child: Image.asset("assets/icons/menu.png"),
                ),
                SizedBox(height: 70),
                Padding(
                  padding: const EdgeInsets.only(top: 60, left: 20, right: 20),
                  child: Row(
                    children: [
                      Text(
                        "Hi Ushiopy!",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 30,
                        ),
                      ),
                      Spacer(),
                      Image.asset("assets/images/logo.png"),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 260, left: 20, right: 20),
                  child: Container(
                    width: double.maxFinite,
                    height: 70,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(35),
                      boxShadow: [
                        BoxShadow(
                          color: Maincolor.withOpacity(0.2),
                          offset: Offset(0, 10),
                          blurRadius: 20,
                        ),
                      ],
                    ),

                    child: Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            decoration: InputDecoration(
                              suffixIcon: Icon(
                                Icons.search,
                                color: Colors.green,
                                size: 30,
                              ),
                              label: Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Text(
                                  "Search",
                                  style: TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Recommended",
                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                      ),
                      Spacer(),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(35),
                        child: Container(
                          width: 70,
                          height: 30,
                          color: Maincolor,
                          child: Center(
                            child: Text(
                              "More",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: 290 ,
                    width: double.maxFinite,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Tile1(),
                        SizedBox(width: 15,),
                        Tile1(),
                        SizedBox(width: 15,),
                        Tile1(),
                        SizedBox(width: 15,),
                        Tile1(),
                        SizedBox(width: 15,),
                      ],
                    ),
                  )

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
