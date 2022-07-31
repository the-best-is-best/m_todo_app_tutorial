import 'package:flutter/material.dart';
import 'package:m_todo_app_tutorial/presentation/home/pages/all_tasks.dart';
import 'package:m_todo_app_tutorial/presentation/home/pages/completed_tasks.dart';

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
                Positioned(
                  bottom: 10,
                  left: 10,
                  right: 10,
                  child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15))),
                        onPressed: () {},
                        child: Text("Add A Task"),
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MyAppBar extends StatelessWidget {
  const MyAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text("Home View"),
      actions: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
        IconButton(onPressed: () {}, icon: const Icon(Icons.calendar_today)),
        IconButton(onPressed: () {}, icon: const Icon(Icons.language)),
      ],
      bottom: const TabBar(
        indicatorColor: Colors.tealAccent,
        isScrollable: true,
        tabs: [
          Tab(text: 'All'),
          Tab(text: 'Completed'),
          Tab(text: 'UnCompleted'),
          Tab(text: 'Favorite'),
        ],
      ),
    );
  }
}
