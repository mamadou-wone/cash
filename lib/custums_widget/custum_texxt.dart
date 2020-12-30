import 'package:flutter/material.dart';

class CustomText {
  buildText(String text, Color color) {
    return Text(
      text,
      style:
          TextStyle(color: color, fontSize: 25.0, fontWeight: FontWeight.w500),
    );
  }
}
