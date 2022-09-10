import 'package:flutter/material.dart';

extension ExtensionFormState on GlobalKey<FormState> {
  bool isValid() {
    return this.currentState?.validate() ?? false;
  }

  void save() {
    this.currentState?.save();
  }
}
