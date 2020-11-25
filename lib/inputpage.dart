import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'RepeatContainer.dart';
import 'Repeattexticon.dart';
const activeColor = Colors.grey;
const deActiveColor = Colors.brown;
class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleColor =deActiveColor;
  Color FeMaleColor =deActiveColor;
  void updateColor(int gender){
    if(gender==1)
      {
        maleColor=activeColor;
        FeMaleColor=deActiveColor;
      }
    if(gender==2)
      {
        maleColor=deActiveColor;
        FeMaleColor=activeColor;
      }

  }
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
                    updateColor(1);
                  });
                },
                child: RepeatContainerCode(
                  colors: maleColor,
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
                    updateColor(2);
                  });
                },
                child: RepeatContainerCode(
                  colors: FeMaleColor,
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





