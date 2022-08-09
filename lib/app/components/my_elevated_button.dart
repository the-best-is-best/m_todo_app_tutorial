import 'package:flutter/material.dart';

import 'my_text.dart';

class MyElevatedButton extends StatelessWidget {
  const MyElevatedButton({
    this.width = double.infinity,
    Key? key,
    this.onPressed,
  }) : super(key: key);
  final double width;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15))),
        onPressed: onPressed,
        child: const MyText(),
      ),
    );
  }
}
