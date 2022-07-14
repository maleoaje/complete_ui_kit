import 'package:complete_ui_kit/config/constants.dart';
import 'package:flutter/material.dart';

class GlobalStyle {
  static TextStyle normalText =
      TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: dimGrey);
  static TextStyle appTitleStyle =
      TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: dimGrey);
  static TextStyle headerStyle =
      TextStyle(fontSize: 20, fontWeight: FontWeight.w800, color: dimGrey);
  //Task App styles
  static TextStyle taskAppTitleStyle =
      TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: taskAppBlue);
  static TextStyle dimText =
      TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: liteGrey);
  static TextStyle dimTextInputText =
      TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: liteGrey);
  static TextStyle taskAppNormalText =
      TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: taskAppBlue);
  static TextStyle bottonAppBarStyle =
      TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: taskAppBlue);
}
