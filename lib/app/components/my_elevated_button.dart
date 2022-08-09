import 'package:flutter/material.dart';

import 'my_text.dart';

class MyElevatedButton extends StatelessWidget {
  const MyElevatedButton({
    this.width = double.infinity,
    Key? key,
    this.onPressed,
    required this.title,
  }) : super(key: key);
  final double width;
  final VoidCallback? onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15))),
        onPressed: onPressed,
        child: MyText(
          title: title,
        ),
      ),
    );
  }
}
