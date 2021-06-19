import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function(bool?)? checkboxCallback;
  final Function()? removeTask;
  // void checkboxCallback() {}

  TaskTile(
      {this.isChecked = false,
      this.taskTitle = 'task',
      this.checkboxCallback,
      this.removeTask});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: removeTask,
      child: ListTile(
        title: Text(
          taskTitle,
          style: TextStyle(
              decoration: isChecked ? TextDecoration.lineThrough : null),
        ),
        trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: isChecked,
          onChanged: checkboxCallback,
        ),
      ),
    );
  }
}
