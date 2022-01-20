import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/constant.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {

    final String bmiResult;
    final String resultText;
    final String interpretation;

  const ResultPage({@required this.bmiResult, @required this.resultText,@required this.interpretation});

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
            alignment: Alignment.bottomLeft,
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
                  resultText.toUpperCase(),
                  style: kResultTextStyle,
                ),
                Text(
                  bmiResult,
                  style: kBMITextStyle,
                ),
                Text(
                  interpretation,
                  style: kBodyTextStyle,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            ),
          ),
          Expanded(
            child: BottomButton(onTap:(){
              Navigator.pop(context);
            }, buttonTitle: "RE-CALCULATE"),
          ),

        ],
      )
    );
  }
}
