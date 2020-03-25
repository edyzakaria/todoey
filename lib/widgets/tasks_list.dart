import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:todoeyflutter/models/task_data.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Consumer <TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(itemBuilder: (context, index) {
          final task = taskData.tasks[index];//simplifies so just call task.
           return TaskTile(
              taskTitle: task.name,
              taskTitleLongPressCallback: () {
                taskData.deleteTask(task);
              },
              isChecked: task.isDone,
              checkBoxCallback: (bool checkBoxState) {
                taskData.updateTask(task);
              });
        },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}

