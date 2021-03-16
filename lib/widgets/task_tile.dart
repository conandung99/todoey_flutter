import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;
  void checkBoxCallback(bool value) {
    setState(() {
      isChecked = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'This is a task',
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: TaskCheckbox(
        checkBox: isChecked,
        toggleCheckBox: checkBoxCallback,
      ),
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  final bool checkBox;
  final Function toggleCheckBox;
  TaskCheckbox({this.checkBox, this.toggleCheckBox});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: checkBox,
      onChanged: toggleCheckBox,
    );
  }
}
