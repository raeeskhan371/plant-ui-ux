import 'package:flutter/material.dart';

class  tile2 extends StatelessWidget {
   tile2({super.key,required this.iconePath});



   String iconePath;

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 70,
      height: 70,
      color: Colors.red,
      child: Image.asset(iconePath)
    );
  }
}

