import 'package:flutter/material.dart';
import 'constentfile.dart';
import 'RepeatContainer.dart';
import 'inputpage.dart';

class ResultScreen extends StatelessWidget {
//  resultscreen({@required this.bmiresult, this.final_result, this.suggestion});
//  final String bmiresult;
//  final String final_result;
//  final String suggestion;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI RESULT'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                child: Center(
                  child: Text(
                    'YOUR RESULT',
                    style: klargebuttonstyle,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: RepeatContainerCode(
                colors: activeColor,
                cardwidge: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Normal', style: Result1),
                    Text('18.0', style: Result2),
                    Text('BMI is low you should have work more',
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => InputPage()));
                },
                child: Container(
                  child: Center(
                    child: Text('ReCalculate', style: klargebuttonstyle),
                  ),
                  color: Colors.deepOrange,
                  height: 60,
                  width: double.infinity,
                  margin: EdgeInsets.only(top: 10),
                ),
              ),
            ),
          ],
        ));
  }


}

