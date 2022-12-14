import 'package:flutter/material.dart';

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
          ]),
    );
  }
}
