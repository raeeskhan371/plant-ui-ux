import 'package:flutter/material.dart';
import 'package:plant_application/pages/colors.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(35),
                    child: Container(
                      width: double.maxFinite,
                      height: 70,
                      color: Colors.white,
                      child: Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              decoration: InputDecoration(
                                suffixIcon: Icon(Icons.search,color: Colors.green,size: 30,),
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
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
