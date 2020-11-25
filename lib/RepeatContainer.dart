import 'package:flutter/material.dart';
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