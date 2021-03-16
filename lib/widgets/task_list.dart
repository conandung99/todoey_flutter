import 'package:flutter/material.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';
import 'package:todoey_flutter/models/task.dart';

class TaskList extends StatefulWidget {
  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  List<Task> taskList = [
    Task(title: 'Buy milk', done: false),
    Task(title: 'Buy eggs', done: false),
    Task(title: 'Buy bread', done: true),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          title: taskList[index].title,
          isChecked: taskList[index].done,
        );
      },
      itemCount: taskList.length,
    );
  }
}
