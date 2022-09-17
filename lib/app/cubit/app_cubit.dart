import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:m_todo_app_tutorial/app/cubit/app_state.dart';
import 'package:m_todo_app_tutorial/domain/models/task_model.dart';
import 'package:sqflite/sqflite.dart';

class AppCubit extends Cubit<AppState> {
  final Database db;
  AppCubit(this.db) : super(InitAppState());

  static AppCubit get(BuildContext context) => BlocProvider.of(context);

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
    taskFreezed = taskFreezed.copyWith(startTime: startTime);
  }

  void addendTime(String endTime) {
    taskFreezed = taskFreezed.copyWith(endTime: endTime);
  }

  void addColor(String color) {
    taskFreezed = taskFreezed.copyWith(color: color);
  }

  void addRemind(int remind) {
    taskFreezed = taskFreezed.copyWith(remind: remind);
  }
}
