import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:m_todo_app_tutorial/app/cubit/app_state.dart';
import 'package:m_todo_app_tutorial/domain/models/tasks_model.dart';
import 'package:sqflite/sqflite.dart';

class AppCubit extends Cubit<AppState> {
  final Database db;
  AppCubit(this.db) : super(InitAppState());
  TasksModel taskToInsert = const TasksModel(
      title: '', description: '', favorite: 0, completed: 0, color: '');

  void addTitle() {
    taskToInsert = taskToInsert.copyWith(title: '');
  }
}
