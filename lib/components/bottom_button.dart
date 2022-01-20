import 'package:flutter/material.dart';
import '../constant.dart';

class BottomButton extends StatelessWidget {
  BottomButton({@required this.onTap,@required this.buttonTitle});
  final Function onTap;
  final String buttonTitle;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,

      child: Container(

        child: Center(child: Text(buttonTitle,style: kLargeButtonStyle,)),
        width: double.infinity,
         margin: EdgeInsets.only(top: 10),
         padding: EdgeInsets.only(bottom: 20),
        // height: bottomContainerHeight,
        color: kBottomContainerColor,
      ),
    );
  }
}