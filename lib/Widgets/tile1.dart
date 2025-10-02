import 'package:flutter/material.dart';
import 'package:plant_application/pages/colors.dart';

class Tile1 extends StatelessWidget {
   Tile1({super.key,required this.ImagePath,
     required this.Price,
     required this.Name,
     required this.Country,


   });

   String ImagePath;
   String Price;
   String Name;
   String Country;

  @override
  Widget build(BuildContext context) {
    return    Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Maincolor.withOpacity(0.2),
            blurRadius: 20,
            offset: Offset(0, 20),
          ),
        ],
        borderRadius: BorderRadius.circular(13),
        color: Colors.white,
      ),
      height: 300,
      width: 180,

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
            width: 180,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(ImagePath),
                fit: BoxFit.cover,
              ),
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft:Radius.circular(10),topRight:Radius.circular(10)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  Name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Spacer(),
                Text(
                  Price,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Maincolor
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              Country,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Maincolor.withOpacity(0.7)
              ),
            ),
          ),
        ],
      ),
    );
  }
}
