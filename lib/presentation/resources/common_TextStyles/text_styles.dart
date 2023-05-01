



import 'package:flutter/material.dart';

class Styles {
  Styles._();

  static TextStyle PTScans(double fontSize, Color color, FontWeight fontWeight,
      {TextDecoration? line = TextDecoration.none}) {
    return TextStyle(
      decoration: line,
      fontSize: fontSize,
      fontWeight: fontWeight,
      fontFamily: 'PTSans',
      
      color: color,
    );
  }

 
}
