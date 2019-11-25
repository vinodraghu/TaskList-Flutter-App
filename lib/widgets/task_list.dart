import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:todoey_stub/model/task.dart';

class TaskList extends StatelessWidget {
  List<Task> listvalue = [
    Task(name: 'task1'),
    Task(name: 'task2'),
    Task(name: 'task3'),
    Task(name: 'task4'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context,index){
      return  TaskTile(textValue: listvalue[index].name,isCheckValue: listvalue[index].isCheck);
    },itemCount: listvalue.length,);
  }
}
