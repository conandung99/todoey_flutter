import 'package:flutter/material.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';
import 'package:todoey_flutter/models/task.dart';

class TaskList extends StatelessWidget {
  final List<Task> taskList;
  final Function checkBoxCallback;
  TaskList({@required this.taskList, this.checkBoxCallback});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          title: taskList[index].title,
          isChecked: taskList[index].done,
          checkBoxCallback: (value) {
            checkBoxCallback(index);
          },
        );
      },
      itemCount: taskList.length,
    );
  }
}
