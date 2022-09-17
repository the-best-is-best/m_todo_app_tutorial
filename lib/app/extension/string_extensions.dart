import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../constant/constant.dart';

extension ExtensionString on String {
  TimeOfDay toTime() {
    DateTime dateTime = Constant.originalTimeFormat.parse(this);

    return TimeOfDay(hour: dateTime.hour, minute: dateTime.minute);
  }

  DateTime toDate() {
    DateTime outputDate = Constant.originalDateFormat.parse(this);
    return outputDate;
  }

  DateTime toDateTime() {
    DateTime outputDate = DateFormat('yyyy/MM/dd hh:mm a').parse(this);
    return outputDate;
  }
}
