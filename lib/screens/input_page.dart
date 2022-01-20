import 'package:bmi_calculator/result_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';
import 'constant.dart';
import 'bottom_button.dart';
import 'round_icon.dart';


enum Gender{
  male,
  female
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender ;
  int height = 180;
  int weight = 60;
  int age = 19;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body:Column(
        children: [
          Expanded(
            flex: 3,
            child: Row(
            children: [
              Expanded(
                child:ReusableCard(
                  onPress: (){
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                  colour:selectedGender == Gender.male ? kActiveCardColor: kInactiveCardColor,
                    cardChild: IconContent(icon:FontAwesomeIcons.mars,iconName: "MALE",),
              ),
              ),
              Expanded(child: ReusableCard(
                onPress: (){
                  setState(() {
                    selectedGender = Gender.female;
                  });
                },
                colour:selectedGender == Gender.female ? kActiveCardColor:kInactiveCardColor,
                  cardChild:IconContent(
                    icon: FontAwesomeIcons.venus,
                    iconName: "FEMALE",
                  ),),),
            ],
          ),
          ),
          Expanded(
            flex: 3,
            child: Row(
            children: [
              Expanded(child: ReusableCard(
                colour:kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:<Widget> [
                    Text("HEIGHT",style: kLabelTextStyle,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(height.toString(),style: kNumberTextStyle),
                        Text(
                          "cm",style: kLabelTextStyle,
                        ),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        inactiveTrackColor: Color(0xFF8D8E98),
                        activeTrackColor: Colors.white,
                        thumbColor: Color(0xFFEB1555),
                        overlayColor: Color(0x29EB1555),
                        thumbShape: RoundSliderThumbShape(
                          enabledThumbRadius: 15,
                        ),
                        overlayShape: RoundSliderOverlayShape(
                          overlayRadius: 30
                        )
                      ),
                      child: Slider(value: height.toDouble(),
                        min: 120,
                        max: 220,
                        
                        // activeColor: Color(0xFFEB1555),
                        // inactiveColor: Color(0xFF8D8E98),
                        onChanged: (double newValue){
                        setState(() {
                          height= newValue.round();
                        });
                        },
                      ),
                    )
                  ],
                ),

              ),),
            ],
          ),),
          Expanded(
            flex: 3,
            child: Row(
            children: [
              Expanded(child: ReusableCard(
                colour:kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("WEIGHT",style: kLabelTextStyle,),
                    Text(weight.toString(),style: kNumberTextStyle,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                       RoundIconButton(
                         icon: FontAwesomeIcons.minus,
                         onPress: (){
                           setState(() {
                             weight--;
                           });
                         },
                       ),
                        SizedBox(width: 10,),
                        RoundIconButton(
                            icon:FontAwesomeIcons.plus,
                            onPress: () {
                              setState(() {
                                weight++;
                              });
                            },
                        ),
                      ],
                    )
                  ],
                ),

              ),),
              Expanded(child: ReusableCard(
                colour:kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("AGE",style: kLabelTextStyle,),
                    Text(age.toString(),style: kNumberTextStyle,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RoundIconButton(icon: FontAwesomeIcons.minus, onPress:(){
                          setState(() {
                            age--;
                          });
                        }),
                        SizedBox(width: 10,),
                        RoundIconButton(icon: FontAwesomeIcons.plus, onPress: (){
                          setState(() {
                            age++;
                          });
                        })

                      ],
                    )

                  ],
                ),
              ),),
            ],
          ),),
          Expanded(
            flex: 1,
            child: BottomButton(buttonTitle: "CALCULATE",onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context){
                return ResultPage();
              }));
            },),
          )
        ],
      )

    );
  }
}





