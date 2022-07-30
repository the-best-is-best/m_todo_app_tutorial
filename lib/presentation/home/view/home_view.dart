import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Home Page'),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: Icon(Icons.calendar_today)),
            IconButton(onPressed: () {}, icon: Icon(Icons.language)),
          ],
          bottom: const TabBar(isScrollable: true, tabs: [
            Tab(text: 'All'),
            Tab(text: 'Completed'),
            Tab(text: 'UnCompleted'),
            Tab(text: 'Favorite'),
          ]),
        ),
      ),
    );
  }
}
