import 'package:bmi_calculator/constant.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: Container(
            margin: EdgeInsets.all(8),
            padding: EdgeInsets.all(16),
            child: Text("Your Result",style: kTitleTextStyle,),
          ),),
          Expanded(
            flex: 5,
            child: ReusableCard(colour: kActiveCardColor,
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Normal",
                  style: kResultTextStyle,
                ),
                Text(
                  "18.3",
                  style: kBMITextStyle,
                ),
                Text(
                  "Your BMI result is quite low,You should eat more",
                  style: kBodyTextStyle,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            ),
          ),
          Expanded(child: )

        ],
      )
    );
  }
}
