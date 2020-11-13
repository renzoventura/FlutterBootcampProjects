import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/components/tasks_tile.dart';
import 'package:todoey_flutter/models/data.dart';
import 'package:todoey_flutter/models/task.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return  ListView.builder(itemBuilder: (context, index) {
          final task = taskData.getTask(index);
          return TaskTile(
            taskTitle: task.name,
            isChecked: task.isDone,
            checkboxCallback: (checkboxState) {
              taskData.updateTask(task);
            },
            longPressCallback: () {
              taskData.deleteTask(task);
            },
          );
        },
         itemCount: taskData.taskCount,
        );
      }
    );
  }
}
