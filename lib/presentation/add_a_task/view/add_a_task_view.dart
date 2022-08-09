import 'package:flutter/material.dart';
import 'package:m_todo_app_tutorial/app/components/my_text.dart';

import '../../../app/components/my_form_field.dart';

class AddATaskView extends StatefulWidget {
  const AddATaskView({Key? key}) : super(key: key);

  @override
  State<AddATaskView> createState() => _AddATaskViewState();
}

class _AddATaskViewState extends State<AddATaskView> {
  late final GlobalKey<FormState> formKey;
  @override
  void initState() {
    formKey = GlobalKey<FormState>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add A Task"),
      ),
      body: SingleChildScrollView(
          child: Padding(
<<<<<<< HEAD
        padding: const EdgeInsets.only(top: 16) +
            const EdgeInsets.symmetric(horizontal: 20),
        child: Form(
          key: formKey,
          child: Column(
            children: const [
              BuildFormField(
                title: "Title",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16),
              BuildFormField(
                title: "Date",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      )),
=======
        padding: const EdgeInsets.only(top: 20) +
            const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Form(
                child: Column(
              children: [
                MyFormField(
                  title: "Title",
                  onSaved: (newValue) {},
                ),
                const SizedBox(height: 16),
                MyFormField(
                  title: "Description",
                  isMultiLine: true,
                  onSaved: (newValue) {},
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Expanded(
                      child: MyFormField(
                        title: "Start Time",
                        onSaved: (newValue) {},
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: MyFormField(
                        title: "End Time",
                        onSaved: (newValue) {},
                      ),
                    ),
                  ],
                )
              ],
            ))
          ],
        ),
      )),
    );
  }
}

class MyFormField extends StatelessWidget {
  const MyFormField({
    Key? key,
    required this.title,
    this.onSaved,
    this.onTap,
    this.validator,
    this.isMultiLine = false,
    this.textInputType,
  }) : super(key: key);
  final String title;
  final FormFieldSetter<String>? onSaved;
  final GestureTapCallback? onTap;
  final FormFieldValidator<String>? validator;
  final bool isMultiLine;
  final TextInputType? textInputType;

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
>>>>>>> episode-5-add-a-task-ui
    );
  }
}
