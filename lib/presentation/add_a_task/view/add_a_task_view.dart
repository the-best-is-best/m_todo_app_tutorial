import 'package:flutter/material.dart';

class AddATaskView extends StatelessWidget {
  const AddATaskView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add A Task"),
      ),
    );
  }
}
