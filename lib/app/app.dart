import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:m_todo_app_tutorial/app/cubit/app_cubit.dart';
import 'package:m_todo_app_tutorial/app/di.dart';
import '../presentation/home/view/home_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit(di()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Todo App',
        theme: ThemeData(
          primarySwatch: Colors.teal,
        ),
        home: const HomeView(),
      ),
    );
  }
}
