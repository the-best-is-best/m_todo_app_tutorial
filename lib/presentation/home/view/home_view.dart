import 'package:flutter/material.dart';
import 'package:m_todo_app_tutorial/app/extension/extension_build_context.dart';
import 'package:m_todo_app_tutorial/presentation/add_a_task/view/add_a_task_view.dart';
import 'package:m_todo_app_tutorial/presentation/home/pages/all_tasks.dart';
import 'package:m_todo_app_tutorial/presentation/home/pages/completed_tasks.dart';
import 'package:m_todo_app_tutorial/presentation/home/pages/favorite_tasks.dart';
import 'package:m_todo_app_tutorial/presentation/home/pages/un_completed_tasks.dart';

import '../../../app/components/my_elevated_button.dart';
import '../widgets/my_app_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(100), child: MyAppBar()),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Stack(
            children: [
              SizedBox(
                height: context.width * 75,
                child: const TabBarView(children: [
                  AllTasks(),
                  CompletedTasks(),
                  UnCompletedTasks(),
                  FavoriteTasks(),
                ]),
              ),
              Positioned(
                  bottom: 10,
                  right: 10,
                  left: 10,
                  child: MyElevatedButton(
                    title: "Add A Task",
                    onPressed: () {
                      context.push(const AddATaskView());
                    },
                    title: 'Add A Task',
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
