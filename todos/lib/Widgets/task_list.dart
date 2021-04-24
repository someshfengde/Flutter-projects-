import 'package:flutter/material.dart';
import 'tasktile.dart';
import 'package:provider/provider.dart';
import 'package:todos/Model/task_data.dart';
class TaskList extends StatelessWidget {

  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context,taskData,child){
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
              tasktitle: taskData.tasks[index].name,
              checkboxCallback:(checkboxState){
                taskData.update_task(taskData.tasks[index]);
                // setState(() {
                //   // print('set state called  and toggle done val is ' + tasks[index].isdone.toString());
                //   Provider.of<TaskData>(context).tasks[index].toggledone();
                //   // print('toggledone value changed to ' +tasks[index].isdone.toString() );
                // });
              },
              longPressCallback: (){
                taskData.delete_task(taskData.tasks[index]);
            },
              ischecked: taskData.tasks[index].isdone,
            );
          },
          itemCount: taskData.taskCount,
        );
      }
    );
  }
}
