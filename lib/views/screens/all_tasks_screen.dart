import 'package:flutter/material.dart';

import '../../data/data_source.dart';
import '../widgets/task_widget.dart';

class AllTasksScreen extends StatelessWidget {
  Function fun;
  AllTasksScreen(this.fun);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        itemCount: DataSource.tasks.length,
        itemBuilder: (context, index) {
          return TaskWidget(DataSource.tasks[index], fun);
        });
  }
}
