import 'package:flutter/material.dart';
import 'package:todoey/models/task_data.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked ;
  final String taskTitle;
  final Function checkboxCallback;
  final Function onLongPressed;

  TaskTile({this.isChecked,this.taskTitle,this.checkboxCallback,this.onLongPressed});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: onLongPressed,
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: checkboxCallback,
        activeColor: Colors.lightBlueAccent,
      ),
    );
  }
}



