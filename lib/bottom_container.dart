import 'package:flutter/material.dart';
import 'constants.dart';
import 'result_page.dart';

class BottomContainer extends StatelessWidget {

  BottomContainer({@required this.label,@required this.onPress});

  final Function onPress;
  final String label;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        alignment: Alignment.center,
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 10),
        width: double.infinity,
        height: kBottomContainerHeight,
        child: Text(
          label,
          style: TextStyle(
            letterSpacing: 2,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}