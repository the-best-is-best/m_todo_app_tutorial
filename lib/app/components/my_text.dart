import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  const MyText({
    Key? key,
    required this.title,
    this.textStyle,
  }) : super(key: key);
  final String title;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: textStyle,
    );
  }
}
