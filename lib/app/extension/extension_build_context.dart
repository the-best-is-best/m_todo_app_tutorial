import 'package:flutter/material.dart';

extension ExtensionBuildContext on BuildContext {
  double get width => MediaQuery.of(this).size.width;
  double get height => MediaQuery.of(this).size.height;

  void push(Widget secondPage) {
    Navigator.push(this, MaterialPageRoute(builder: (context) => secondPage));
  }
}
