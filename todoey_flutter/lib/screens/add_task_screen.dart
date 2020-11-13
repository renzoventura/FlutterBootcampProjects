import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/data.dart';
import 'package:todoey_flutter/models/task.dart';

class AddTaskScreen extends StatelessWidget {

//  final Function addTaskCallback;
//  AddTaskScreen({this.addTaskCallback});

  @override
  Widget build(BuildContext context) {
    String newTaskTitle;

    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return Container(
          color: Color(0xff757575),
          child: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text(
                  "Add Task",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.lightBlueAccent
                  ),
                ),
                TextField(
                  autofocus: true,
                  textAlign: TextAlign.center,
                  onChanged: (newText) {
                    newTaskTitle = newText;
                  },
                ),
                FlatButton(
                  color: Colors.lightBlueAccent,
                  child: Text(
                    "Add",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    taskData.addTask(Task(name: newTaskTitle));
                    Navigator.pop(context);
                  },
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
