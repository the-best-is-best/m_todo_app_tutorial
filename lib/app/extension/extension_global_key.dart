import 'package:flutter/material.dart';

extension ExtensionGlobalKey on GlobalKey<FormState> {
  bool isValid() {
    return this.currentState?.validate() ?? false;
  }

  void save() {
    this.currentState?.save();
  }
}
