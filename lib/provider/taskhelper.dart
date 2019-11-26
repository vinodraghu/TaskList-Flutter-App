import 'package:flutter/material.dart';
import '../model/task.dart';

class TaskHelper extends ChangeNotifier {
  List<Task> listvalue = [
    Task(name: 'task1'),
    Task(name: 'task2'),
    Task(name: 'task3'),
    Task(name: 'task4'),
  ];

  int get taskCount {
    return listvalue.length;
  }

  void addItems(Task task) {
    listvalue.add(task);
    notifyListeners();
  }
}
