import 'dart:developer';

import 'package:flutter/material.dart';

import '../../widgets/my_list_tile.dart';
import '../all_tasks_screen.dart';
import '../complete_tasks.dart';
import '../incomplete_tasks.dart';

class LargeScreen extends StatefulWidget {
  @override
  State<LargeScreen> createState() => _LargeScreenState();
}

class _LargeScreenState extends State<LargeScreen> {
  int pageIndex = 0;

  PageController pageController = PageController();

  updateScreen() {
    log('set state from main screen has been excuted');
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Todo App"),
      ),
      body: Row(
        children: [
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              children: [
                const UserAccountsDrawerHeader(
                    accountName: Text("Omar"),
                    accountEmail: Text("omar@gmail.com"),
                    currentAccountPicture: CircleAvatar(
                      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
                      // backgroundImage: AssetImage('assets/images/image0.jpg'),
                    )),
                MyListTile(
                    "All Tasks",
                    "Go To All Tasks Screen",
                    Icon(Icons.list),
                    Icon(Icons.arrow_forward_ios),
                    0,
                    pageController),
                MyListTile(
                    "Complete Tasks",
                    "Go To  Complete Screen",
                    Icon(Icons.done),
                    Icon(Icons.arrow_forward_ios),
                    1,
                    pageController),
                MyListTile(
                    "InComplete Tasks",
                    "Go To InComplete Screen",
                    Icon(Icons.cancel),
                    Icon(Icons.arrow_forward_ios),
                    2,
                    pageController),
              ],
            ),
          )),
          Expanded(
            child: PageView(
              controller: pageController,
              children: [
                AllTasksScreen(updateScreen),
                CompleteTasksScreen(updateScreen),
                InCompleteTasksScreen(updateScreen)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
