import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String title;

  TaskTile({this.isChecked, this.title});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        // onChanged: checkBoxCallback,
      ),
    );
  }
}

// void checkBoxCallback(bool value) {
//   setState(() {
//     isChecked = value;
//   });
// }
