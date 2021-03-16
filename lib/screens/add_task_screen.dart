import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.horizontal(
            left: Radius.circular(25.0),
            right: Radius.circular(25.0),
          ),
        ),
      ),
    );
  }
}
