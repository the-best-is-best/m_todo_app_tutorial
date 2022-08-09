import 'package:flutter/material.dart';

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
    );
  }
}
