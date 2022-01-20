import 'package:flutter/material.dart';
import '../constant.dart';

class IconContent extends StatelessWidget {
  IconContent({this.icon,this.iconName});
  final IconData icon;
  final String iconName;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: Colors.white,
          size: 80,
        ) ,
        SizedBox(height: 15,),
        Text(iconName,style:kLabelTextStyle ),
      ],
    );
  }
}