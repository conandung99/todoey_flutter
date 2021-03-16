import 'package:flutter/material.dart';

class TaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(Icons.add),
        onPressed: () {},
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(
                top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 30.0,
                  child: Icon(
                    Icons.list,
                    color: Colors.lightBlueAccent,
                    size: 30.0,
                  ),
                ),
                Text(
                  'Todoey',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 60.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  '12 Tasks',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
              child: ListView(
                children: [
                  TaskItem(
                    name: 'Buy milk',
                    status: false,
                  ),
                  TaskItem(
                    name: 'Buy edges',
                    status: false,
                  ),
                  TaskItem(
                    name: 'Buy bread',
                    status: true,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TaskItem extends StatelessWidget {
  TaskItem({this.name, this.status});

  final String name;
  final bool status;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 40.0, right: 40.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            name,
            style: TextStyle(
              color: Colors.black87,
              fontSize: 20.0,
            ),
          ),
          Checkbox(value: status, onChanged: (bool check) {}),
        ],
      ),
    );
  }
}
