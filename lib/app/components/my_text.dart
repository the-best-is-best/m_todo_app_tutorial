import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  const MyText({
    Key? key,
    required this.title,
    this.style,
  }) : super(key: key);
  final String title;
  final TextStyle? style;
  @override
  Widget build(BuildContext context) {
    //  return Text("Add A Task");
    return Text(
      title,
      style: style,
    );
  }
}
