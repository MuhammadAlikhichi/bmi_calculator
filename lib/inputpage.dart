import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
              ),
              ),
              Expanded(child: RepeatContainerCode(colors: Colors.brown,),
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

class RepeatContainerCode extends StatelessWidget {
  RepeatContainerCode({@required this.colors});
  Color colors;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: Colors.brown,
        borderRadius: BorderRadius.circular(10.0)
      ),
    );
  }
}