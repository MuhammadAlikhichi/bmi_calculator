import 'package:flutter/material.dart';
import 'constentfile.dart';
import 'RepeatContainer.dart';
import 'inputpage.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen({@required this.bmiresult, this.finalresult, this.suggestion});
 final String bmiresult;
  final String finalresult;
  final String suggestion;
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
                    Text(finalresult.toUpperCase(), style: Result1),
                    Text(bmiresult, style: Result2),
                    Text(suggestion,
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

