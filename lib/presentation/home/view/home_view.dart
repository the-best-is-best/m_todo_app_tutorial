import 'package:flutter/material.dart';
import 'package:m_todo_app_tutorial/presentation/home/pages/all_tasks.dart';
import 'package:m_todo_app_tutorial/presentation/home/pages/completed_tasks.dart';
import 'package:m_todo_app_tutorial/presentation/home/pages/favorite_tasks.dart';
import 'package:m_todo_app_tutorial/presentation/home/pages/un_completed_tasks.dart';

import '../widgets/my_app_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(100), child: MyAppBar()),
        body: TabBarView(children: [
          AllTasks(),
          CompletedTasks(),
          UnCompletedTasks(),
          FavoriteTasks(),
        ]),
      ),
    );
  }
}
