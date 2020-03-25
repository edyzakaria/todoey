import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  final Function addTaskCallback;
  AddTaskScreen(this.addTaskCallback);

  @override
  Widget build(BuildContext context) {
    String newTaskTitle;

    //We need to wrap container inside container to be able to do corner radius.
    return Container(
      color: Color(0xff757575),
      //So below container actually has the same size and color with its parents.
      //That's why we need to change the color of the 1st container.
      //If we want the circular corner appear then we need to change the color of the 1st container.
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              "Add Task",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.lightBlueAccent,
              ),
            ),
            SizedBox(height: 20.0,),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (value) {
                newTaskTitle = value;
              },
            ),
            SizedBox(height: 20.0,),
            FlatButton(
              color: Colors.lightBlueAccent,
              child: Text(
                'Add',
                style: TextStyle(
                  color: Colors.white
                ),
              ),
              onPressed: () {
                addTaskCallback(newTaskTitle);
              },
            )
          ],
        ),
      ),
    );
  }
}
