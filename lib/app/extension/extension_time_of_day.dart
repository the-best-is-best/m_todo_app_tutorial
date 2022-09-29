import 'package:flutter/material.dart';

extension ExtensionTimeOfDay on TimeOfDay {
<<<<<<< HEAD
  bool isBeforeTimeNow() {
    if (hour < DateTime.now().hour) {
      return true;
    } else if (hour == DateTime.now().hour && minute < DateTime.now().minute) {
=======
  bool isBeforeCurrentTime() {
    if (this.hour < DateTime.now().hour) {
      return true;
    } else if (this.hour == DateTime.now().hour &&
        this.minute < DateTime.now().minute) {
>>>>>>> episode-15-validation-3
      return true;
    } else {
      return false;
    }
  }

<<<<<<< HEAD
  bool isAfterTimeNow() {
    if (hour > DateTime.now().hour) {
      return true;
    } else if (hour == DateTime.now().hour && minute > DateTime.now().minute) {
      return true;
    } else {
      return false;
    }
  }

  bool isBeforeAnotherTime(TimeOfDay time) {
    if (hour < time.hour) {
      return true;
    } else if (hour == time.hour && minute < time.minute) {
      return true;
    } else {
      return false;
    }
  }

  bool isAfterAnotherTime(TimeOfDay time) {
    if (hour > time.hour) {
      return true;
    } else if (hour == time.hour && minute > time.minute) {
=======
  bool isAfterAnotherTime(TimeOfDay timeOfDay) {
    if (this.hour > timeOfDay.hour) {
      return true;
    } else if (this.hour == timeOfDay.hour && this.minute > timeOfDay.minute) {
>>>>>>> episode-15-validation-3
      return true;
    } else {
      return false;
    }
  }
}
