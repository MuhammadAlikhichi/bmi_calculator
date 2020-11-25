import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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

class Repeartexticoncode extends StatelessWidget {
  Repeartexticoncode({@required this.iconData,this.Label});
  final IconData iconData;
  final String Label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconData,
          //FontAwesomeIcons.male,
          size: 85.0,
        ),
        SizedBox(height: 15.0),
        Text(Label,
          style: TextStyle(
            fontSize: 30.0,
            color: Colors.grey,
          ),
        )
      ],
    );
  }
}



class RepeatContainerCode extends StatelessWidget {
  RepeatContainerCode({@required this.colors, this.cardwidge});
  final Color colors;
  final Widget cardwidge;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      child: cardwidge,
      decoration: BoxDecoration(
        color: Colors.brown,
        borderRadius: BorderRadius.circular(10.0)
      ),
    );
  }
}