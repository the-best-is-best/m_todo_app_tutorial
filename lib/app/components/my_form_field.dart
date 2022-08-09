import 'package:flutter/material.dart';
import 'package:m_todo_app_tutorial/app/components/my_text.dart';

class BuildFormField extends StatelessWidget {
  const BuildFormField({
    Key? key,
    required this.title,
    this.style,
  }) : super(key: key);
  final String title;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MyText(title: title, style: style),
        const SizedBox(height: 16),
        TextFormField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.grey[200],
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(color: Colors.green, width: 2),
            ),
          ),
        )
      ],
    );
  }
}
