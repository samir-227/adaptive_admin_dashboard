import 'package:flutter/material.dart';

class SizeConfig {
  static const tablet = 800;
  static const desktop = 1200;
  static late double width;
  static late double height;
  static init(BuildContext context) {
    width = MediaQuery.sizeOf(context).width;
    height = MediaQuery.sizeOf(context).height;
  }
}
