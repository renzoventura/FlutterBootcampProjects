import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/data.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkboxCallback;
  final Function longPressCallback;

  TaskTile({this.isChecked, this.taskTitle, this.checkboxCallback, this.longPressCallback});

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListTile(
          onLongPress: longPressCallback,
          title: Text(
            taskTitle,
            style: TextStyle(
              decoration: isChecked ? TextDecoration.lineThrough : TextDecoration.none,
            ),
          ),
          trailing: Checkbox(
            value: isChecked,
            onChanged: checkboxCallback,
          ),
        );
      },
    );
  }
}


