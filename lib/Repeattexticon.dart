import 'package:flutter/material.dart';
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