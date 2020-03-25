import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkBoxCallback;
  final Function taskTitleLongPressCallback;

  TaskTile({this.taskTitle, this.isChecked, this.checkBoxCallback, this.taskTitleLongPressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: taskTitleLongPressCallback,
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),

      ),
      //We pass a function to toggle the checkbox to the task tile.
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        //when change we call the callback method. this method will also pass the value.
        onChanged: checkBoxCallback, //This callback will pass the value into the callback function.
      ),
    );
  }
}
