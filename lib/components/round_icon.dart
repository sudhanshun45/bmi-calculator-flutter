import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({@required this.icon,@required @required this.onPress });
  final IconData icon;
  final Function onPress;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onPress,
      elevation: 0.0,
      shape: CircleBorder(),
      constraints: BoxConstraints.tightFor(height: 56,width: 56),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}