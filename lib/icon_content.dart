import 'package:flutter/material.dart';
import 'constants.dart';


class IconContent extends StatelessWidget {

  IconContent({this.icon,this.label});

  final icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(height: 10,),
        Text(
          label,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}