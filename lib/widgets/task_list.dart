import 'package:flutter/material.dart';
import 'package:todoey_stub/provider/taskhelper.dart';
import 'task_tile.dart';
import 'package:provider/provider.dart';

class TaskList extends StatefulWidget {
//    final List<Task> listvalue;
//    TaskList(this.listvalue);

  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
//  initState() {
//    super.initState();
  // listvalue = Provider.of<TaskHelper>(context).listvalue;
  // }

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskHelper>(
      builder: (context, TaskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
              textValue: TaskData.listvalue[index].name,
              isCheckValue:
              TaskData.listvalue[index].isCheck,
              checkBoxCallback: (value) {
                setState(
                  () {
                    TaskData.listvalue[index]
                        .toggleDone();
                  },
                );
              },
            );
          },
          itemCount: TaskData.taskCount,
        );
      },
    );
  }
}
