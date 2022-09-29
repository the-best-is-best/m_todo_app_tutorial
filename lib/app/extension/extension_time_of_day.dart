import 'package:flutter/material.dart';

extension ExtensionTimeOfDay on TimeOfDay {
  bool isBeforeCurrentTime() {
    if (this.hour < DateTime.now().hour) {
      return true;
    } else if (this.hour == DateTime.now().hour &&
        this.minute < DateTime.now().minute) {
      return true;
    } else {
      return false;
    }
  }

  bool isAfterAnotherTime(TimeOfDay timeOfDay) {
    if (this.hour > timeOfDay.hour) {
      return true;
    } else if (this.hour == timeOfDay.hour && this.minute > timeOfDay.minute) {
      return true;
    } else {
      return false;
    }
  }
}
