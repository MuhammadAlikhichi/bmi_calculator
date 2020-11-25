import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'RepeatContainer.dart';
import 'Repeattexticon.dart';
const activeColor = Colors.grey;
const deActiveColor = Colors.brown;
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
        children: [
          Expanded(child: Row(
            children: [
              Expanded(child: GestureDetector(
                onTap: (){
                  setState(() {
                    selectGender=Gender.male;
                  });
                },
                child: RepeatContainerCode(
                  colors: selectGender==Gender.male?activeColor:deActiveColor,
                  cardwidge: Repeartexticoncode(
                    iconData: FontAwesomeIcons.male,
                    Label:' MALE',
                  ),

                ),
              ),
              ),
              Expanded(child: GestureDetector(
                onTap: (){
                  setState(() {
                    selectGender=Gender.female;
                  });
                },
                child: RepeatContainerCode(
                  colors: selectGender==Gender.male?activeColor:deActiveColor,
                  cardwidge: Repeartexticoncode(
                    iconData: FontAwesomeIcons.male,
                    Label:' FEMALE',
                  ),

                ),
              ),
              ),
            ],
          )),
          Expanded(child: RepeatContainerCode(colors: Colors.brown,),
          ),
          Expanded(child: Row(
            children: [
              Expanded(child: RepeatContainerCode(colors: Colors.brown,),
              ),
              Expanded(child: RepeatContainerCode(colors: Colors.brown,),
              ),
            ],
          )),
        ],
      ),
    );
  }
}





