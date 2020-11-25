import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'RepeatContainer.dart';
import 'Repeattexticon.dart';
import 'constentfile.dart';
import 'resultscreen.dart';
enum Gender{
  male,
  female,
}
class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectGender;
  int sliderHeight=180;
  int sliderWeight=60;
  int sliderAge=20;
//  Color maleColor =deActiveColor;
//  Color FeMaleColor =deActiveColor;
//  void updateColor(Gender gendertype){
//    if(gendertype==Gender.male)
//      {
//        maleColor=activeColor;
//        FeMaleColor=deActiveColor;
//      }
//    if(gendertype==Gender.female)
//      {
//        maleColor=deActiveColor;
//        FeMaleColor=activeColor;
//      }
//
//  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
      ),
      body: Column(
        crossAxisAlignment:CrossAxisAlignment.stretch,
        children: [
          Expanded(child: Row(
            children: [
              Expanded(

                child: RepeatContainerCode(
                  onPressed: (){
                    setState(() {
                      selectGender=Gender.male;
                    });
                  },
                  colors: selectGender==Gender.male?activeColor:deActiveColor,
                  cardwidge: Repeartexticoncode(
                    iconData: FontAwesomeIcons.male,
                    Label:' MALE',
                  ),

                ),

              ),
              Expanded(
                child: RepeatContainerCode(
                  onPressed: (){
                    setState(() {
                      selectGender=Gender.female;
                    });
                  },
                  colors: selectGender==Gender.male?activeColor:deActiveColor,
                  cardwidge: Repeartexticoncode(
                    iconData: FontAwesomeIcons.male,
                    Label:' FEMALE',
                  ),

                ),

              ),
            ],
          )),
          Expanded(child: RepeatContainerCode(
            colors: Colors.brown,
            cardwidge: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('HEIGHT',style: kLabelstyle,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      sliderHeight.toString(),
                      style: TextStyle(
                        fontSize: 50.0,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Text('cm',
                      style: kLabelstyle,),
                  ],
                ),

                Slider(
                  value: sliderHeight.toDouble(),
                  min: 120.0,
                  max: 220.0,
                  activeColor: Colors.red,
                  inactiveColor: Colors.white,
                  onChanged: (newvalue){
                    setState(() {
                      sliderHeight=newvalue.round();
                    });
                  },
                ),
              ],
            ),
          ),
          ),
          Expanded(child: Row(
            children: [
              Expanded(child: RepeatContainerCode(colors: Colors.brown,
                cardwidge: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'WEIGHT',
                      style: kLabelstyle,
                    ),
                    Text(sliderWeight.toString(), style: kNumberstyle),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RoundIcon(
                          icondata: FontAwesomeIcons.minus,
                          onPress: () {
                            setState(() {
                              sliderWeight--;
                            });
                          },
                        ),
                        SizedBox(width: 5),
                        RoundIcon(
                          icondata: FontAwesomeIcons.plus,
                          onPress: () {
                            setState(() {
                              sliderWeight++;
                            });
                          },
                        ),
                      ],
                    )
                  ],
                ),
              ),
              ),
              Expanded(child: RepeatContainerCode(colors: Colors.brown,
                cardwidge: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'AGE',
                      style: kLabelstyle,
                    ),
                    Text(sliderAge.toString(), style: kNumberstyle),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RoundIcon(
                          icondata: FontAwesomeIcons.minus,
                          onPress: () {
                            setState(() {
                              sliderAge--;
                            });
                          },
                        ),
                        SizedBox(width: 5),
                        RoundIcon(
                          icondata: FontAwesomeIcons.plus,
                          onPress: () {
                            setState(() {
                              sliderAge++;
                            });
                          },
                        ),
                      ],
                    )
                  ],
                ),
              ),
              ),
            ],
          )),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => ResultScreen()));
            },
            child: Container(
              child: Center(
                child: Text('Calculate', style: klargebuttonstyle),
              ),
              color: Colors.deepOrange,
              height: 60,
              width: double.infinity,
              margin: EdgeInsets.only(top: 10),
            ),
          ),
        ],
      ),
    );
  }
}

class RoundIcon extends StatelessWidget {
  RoundIcon({@required this.icondata, this.onPress});
  final IconData icondata;
  final Function onPress;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(
        icondata,
        color: Colors.black,
      ),
      onPressed: onPress,
      elevation: 6,
      constraints: BoxConstraints.tightFor(height: 45.0, width: 45.0),
      shape: CircleBorder(),
      fillColor: Colors.white,
    );
  }
}





