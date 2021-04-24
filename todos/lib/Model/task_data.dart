import 'package:flutter/cupertino.dart';
import 'task.dart';
class TaskData extends ChangeNotifier{

  List<Task> tasks = [
    Task(name: 'Buy milk '),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy bread')
  ];

  int get taskCount {
    return tasks.length;
  }

  void create_task(name){
    tasks.add(Task(name: name) );
    notifyListeners();
  }

  void update_task(Task task){
    task.toggledone();
    notifyListeners();
  }

  void delete_task(Task task){
    tasks.remove(task);
    notifyListeners();
  }
}