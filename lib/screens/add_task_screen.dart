import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  final TextEditingController textEditingController = TextEditingController();
  final Function(String) addCallback;

  AddTaskScreen({this.addCallback});

  @override
  Widget build(BuildContext context) {
    String newTaskTitle;

    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25.0),
            topRight: Radius.circular(25.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 30.0,
                fontWeight: FontWeight.w700,
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              controller: textEditingController,
              onChanged: (textInput) {
                newTaskTitle = textInput;
              },
            ),
            ElevatedButton(
              onPressed: () {
                textEditingController.clear();
                if (newTaskTitle != null) {
                  addCallback(newTaskTitle);
                }
                // Navigator.pop(context);
              },
              child: Text(
                'ADD',
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
