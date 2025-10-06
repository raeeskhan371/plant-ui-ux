import 'package:flutter/material.dart';
import 'package:plant_application/pages/colors.dart';

class tile2 extends StatelessWidget {
  tile2({super.key, required this.iconePath});

  String iconePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      child: Image.asset(iconePath),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Maincolor.withOpacity(0.2),
            blurRadius: 20,
            offset: Offset(0, 20),
          ),
        ],
      ),
    );
  }
}
