import 'package:flutter/material.dart';

import 'my_text.dart';

class MyFormField extends StatelessWidget {
  const MyFormField({
    Key? key,
    required this.title,
    this.onSaved,
    this.onTap,
    this.validator,
    this.isMultiLine = false,
    this.textInputType,
    this.controller,
  }) : super(key: key);
  final String title;
  final FormFieldSetter<String>? onSaved;
  final GestureTapCallback? onTap;
  final FormFieldValidator<String>? validator;
  final bool isMultiLine;
  final TextInputType? textInputType;
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MyText(
          title: title,
          textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
        const SizedBox(height: 16),
        TextFormField(
          controller: controller,
          keyboardType: onTap != null ? TextInputType.none : textInputType,
          decoration: InputDecoration(
            fillColor: Colors.grey[200],
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(color: Colors.green, width: 2)),
          ),
          onSaved: (String? val) {},
          onTap: onTap,
          validator: validator,
          minLines: isMultiLine ? 3 : null,
          maxLines: isMultiLine ? 5 : 1,
        ),
      ],
    );
  }
}
