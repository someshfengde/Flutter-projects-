import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todos/Model/task_data.dart';
import 'package:provider/provider.dart';
class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String newTaskTitle;
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Add Task',
                style: TextStyle(
                    color: Colors.lightBlueAccent,
                    fontSize: 40,
                    fontWeight: FontWeight.w800),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 5),
              child: Center(
                child: TextField(
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.lightBlueAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      letterSpacing: 2),
                      onChanged: (changed) {
                    newTaskTitle = changed;
                      },
                ),
              ),
            ),
            TextButton(
                onPressed: () {
                  Provider.of<TaskData>(context,listen: false).create_task(newTaskTitle);
                  Navigator.pop(context);
                },
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Text(
                      'Add',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Colors.lightBlueAccent,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                )
                // style: ButtonStyle(backgroundColor: ColoredBox() ),
                )
          ],
        ),
      ),
    );
  }
}
