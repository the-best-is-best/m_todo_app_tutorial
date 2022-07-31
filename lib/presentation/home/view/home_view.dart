import 'package:flutter/material.dart';
import 'package:m_todo_app_tutorial/presentation/home/pages/all_tasks.dart';
import 'package:m_todo_app_tutorial/presentation/home/pages/completed_tasks.dart';

import '../widgets/my_app_bar.dart';
import '../widgets/my_elevated_button.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(100.0), child: MyAppBar()),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Stack(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * .75,
                  child: const TabBarView(children: [
                    AllTasks(),
                    CompletedTasks(),
                    AllTasks(),
                    CompletedTasks()
                  ]),
                ),
                const Positioned(
                  bottom: 10,
                  left: 10,
                  right: 10,
                  child: MyElevatedButton(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
