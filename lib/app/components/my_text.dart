import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  const MyText({
    Key? key,
    required this.title,
<<<<<<< HEAD
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
=======
    this.textStyle,
  }) : super(key: key);
  final String title;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: textStyle,
>>>>>>> episode-5-add-a-task-ui
    );
  }
}
