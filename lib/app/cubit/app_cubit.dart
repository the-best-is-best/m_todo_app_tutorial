<<<<<<< HEAD
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:m_todo_app_tutorial/app/cubit/app_state.dart';
import 'package:m_todo_app_tutorial/app/extension/extension_time_of_day.dart';
import 'package:m_todo_app_tutorial/app/extension/string_extensions.dart';
import 'package:m_todo_app_tutorial/domain/models/task_model.dart';
import 'package:sqflite/sqflite.dart';

import '../constant/constant.dart';

=======
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:m_todo_app_tutorial/app/cubit/app_state.dart';
import 'package:m_todo_app_tutorial/app/extension/extension_date_time.dart';
import 'package:m_todo_app_tutorial/app/extension/extension_string.dart';
import 'package:m_todo_app_tutorial/app/extension/extension_time_of_day.dart';
import 'package:m_todo_app_tutorial/domain/models/task_model.dart';
import 'package:sqflite/sqflite.dart';

>>>>>>> episode-15-validation-3
class AppCubit extends Cubit<AppState> {
  final Database db;
  AppCubit(this.db) : super(InitAppState());

<<<<<<< HEAD
  static AppCubit get(BuildContext context) =>
      BlocProvider.of<AppCubit>(context);
=======
  static AppCubit get(BuildContext context) => BlocProvider.of(context);
>>>>>>> episode-15-validation-3

  TaskModel taskFreezed = const TaskModel(
      title: '',
      date: '',
      description: '',
      startTime: '',
      endTime: '',
      remind: 0,
      completed: 0,
      favorite: 0,
      color: '');
  void addTitle(String title) {
    taskFreezed = taskFreezed.copyWith(title: title);
  }

  void addDescription(String description) {
    taskFreezed = taskFreezed.copyWith(description: description);
  }

  void addDate(String date) {
    taskFreezed = taskFreezed.copyWith(date: date);
  }

  void addStartTime(String startTime) {
<<<<<<< HEAD
    print(startTime);
=======
>>>>>>> episode-15-validation-3
    taskFreezed = taskFreezed.copyWith(startTime: startTime);
  }

  void addendTime(String endTime) {
    taskFreezed = taskFreezed.copyWith(endTime: endTime);
  }

<<<<<<< HEAD
  void addReminder(int remind) {
    taskFreezed = taskFreezed.copyWith(remind: remind);
  }

=======
>>>>>>> episode-15-validation-3
  void addColor(String color) {
    taskFreezed = taskFreezed.copyWith(color: color);
  }

<<<<<<< HEAD
  String? isStartTimeValid() {
    if (taskFreezed.date.toDate() ==
        Constant.originalDateFormat.parse(DateTime.now().toString())) {
      if (taskFreezed.startTime.toTime().isBeforeTimeNow()) {
        return "Time Start Less Than Time Now";
      }
    }

    if (taskFreezed.startTime
        .toTime()
        .isAfterAnotherTime(taskFreezed.endTime.toTime())) {
      return "Time Start After Than End Time";
    }

    return null;
=======
  void addRemind(int remind) {
    taskFreezed = taskFreezed.copyWith(remind: remind);
  }

  String? startTimeValidation() {
    if (taskFreezed.date.toDate().isCurrentDate()) {
      if (taskFreezed.startTime.toTime().isBeforeCurrentTime()) {
        return "Start Time Less than Time Now";
      }
    }
    return null;
  }

  String? endTimeValidation() {
    if (taskFreezed.startTime
        .toTime()
        .isAfterAnotherTime(taskFreezed.endTime.toTime())) {
      return "End Time Less than Start Now";
    } else {
      return null;
    }
>>>>>>> episode-15-validation-3
  }
}
