import 'dart:developer';

import 'package:flutter/material.dart';

import '../../widgets/my_list_tile.dart';
import '../all_tasks_screen.dart';
import '../complete_tasks.dart';
import '../incomplete_tasks.dart';
import 'large_screens.dart';

class SmallScreen extends StatefulWidget {
  @override
  State<SmallScreen> createState() => _SmallScreenState();
}

class _SmallScreenState extends State<SmallScreen> {
  PageController pageController = PageController();

  int pageIndex = 0;

  updateScreen() {
    log('set state from main screen has been excuted');
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: pageIndex,
          onTap: (v) {
            pageIndex = v;
            pageController.jumpToPage(v);
            setState(() {});
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.list), label: "All Tasks"),
            BottomNavigationBarItem(
                icon: Icon(Icons.done), label: "Complete Tasks"),
            BottomNavigationBarItem(
                icon: Icon(Icons.cancel), label: "InComplete Tasks"),
          ]),
      drawer: Drawer(
        child: Column(
          children: [
            const UserAccountsDrawerHeader(
                accountName: Text("Omar"),
                accountEmail: Text("omar@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.white,
                  // backgroundImage: AssetImage('assets/images/image0.jpg'),
                )),
            MyListTile("All Tasks", "Go To All Tasks Screen", Icon(Icons.list),
                Icon(Icons.arrow_forward_ios), 0, pageController, true),
            MyListTile(
                "Complete Tasks",
                "Go To  Complete Screen",
                Icon(Icons.done),
                Icon(Icons.arrow_forward_ios),
                1,
                pageController,
                true),
            MyListTile(
                "InComplete Tasks",
                "Go To InComplete Screen",
                Icon(Icons.cancel),
                Icon(Icons.arrow_forward_ios),
                2,
                pageController,
                true),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("Todo App"),
      ),
      body: PageView(
        controller: pageController,
        children: [
          AllTasksScreen(updateScreen),
          CompleteTasksScreen(updateScreen),
          InCompleteTasksScreen(updateScreen)
        ],
      ),
    );
  }
}
