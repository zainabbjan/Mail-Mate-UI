

import 'package:flutter/material.dart';

class Navigate {
  Navigate._();

  static to(BuildContext context, Widget child) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => child));
  }

  static toReplace(BuildContext context, Widget child) {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => child));
  }

  static toReplaceAll(BuildContext context, Widget child) {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => child),
      (route) => false,
    );
  }
}
