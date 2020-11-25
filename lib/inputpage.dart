import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'RepeatContainer.dart';
import 'Repeattexticon.dart';
class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
              Expanded(child: RepeatContainerCode(
                colors: Colors.brown,
                cardwidge: Repeartexticoncode(
                  iconData: FontAwesomeIcons.male,
                  Label:' MALE',
                ),

              ),
              ),
              Expanded(child: RepeatContainerCode(
                colors: Colors.brown,
                cardwidge: Repeartexticoncode(
                  iconData: FontAwesomeIcons.male,
                  Label:' FEMALE',
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





