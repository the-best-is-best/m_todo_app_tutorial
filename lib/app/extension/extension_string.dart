import 'package:flutter/material.dart';
import 'package:m_todo_app_tutorial/app/constant/constant.dart';

extension ExtensionString on String {
  DateTime toDate() {
    return Constant.originalDateFormat.parse(this);
  }

  TimeOfDay toTime() {
    DateTime dateTime = Constant.originalTimeFormat.parse(this);
    return TimeOfDay(hour: dateTime.hour, minute: dateTime.minute);
  }
}
