import 'package:bloc/bloc.dart';
import 'package:m_todo_app_tutorial/app/cubit/app_state.dart';
import 'package:sqflite/sqflite.dart';

class AppCubit extends Cubit<AppState> {
  final Database db;
  AppCubit(this.db) : super(InitAppState());
}
