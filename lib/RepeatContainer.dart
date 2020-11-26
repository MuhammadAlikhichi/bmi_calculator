import 'package:flutter/material.dart';
class RepeatContainerCode extends StatelessWidget {
  RepeatContainerCode({@required this.colors, this.cardwidge,this.onPressed});
  final Color colors;
  final Widget cardwidge;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: EdgeInsets.all(15.0),
        child: cardwidge,
        decoration: BoxDecoration(
            color: colors,
            borderRadius: BorderRadius.circular(10.0)
        ),
      ),
    );
  }
}