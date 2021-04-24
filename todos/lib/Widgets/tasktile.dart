import 'package:flutter/material.dart';
import '../Model/task_data.dart';
class TaskTile extends StatelessWidget {
  final bool ischecked;
  final String tasktitle;
  final Function checkboxCallback;
  final Function longPressCallback ;
  TaskTile({this.ischecked, this.tasktitle, this.checkboxCallback,this.longPressCallback});

  @override
  Widget build(BuildContext context) {
    print('the value of ischeked is ' + ischecked.toString());
    return ListTile(
      onLongPress: longPressCallback ,
        title: Text(
          tasktitle,
          style: TextStyle(
              decoration: ischecked ? TextDecoration.lineThrough : null),
        ),
        trailing: Checkbox(
          onChanged: checkboxCallback,
          value: ischecked,
          activeColor: Colors.lightBlueAccent,
        ));
  }
}
